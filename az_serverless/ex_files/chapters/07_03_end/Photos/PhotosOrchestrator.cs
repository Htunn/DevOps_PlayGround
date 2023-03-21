using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Extensions.DurableTask;
using Microsoft.Azure.WebJobs.Extensions.Http;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;
using Photos.Models;
using System.Linq;
using System.Net.Http;
using System.Threading.Tasks;

namespace Photos
{
    public static class PhotosOrchestrator
    {
        [FunctionName("PhotosOrchestrator_HttpStart")]
        public static async Task<HttpResponseMessage> HttpStart(
            [HttpTrigger(AuthorizationLevel.Anonymous, "get", "post")] HttpRequestMessage req,
            [DurableClient] IDurableOrchestrationClient starter,
            ILogger log)
        {
            var body = await req.Content.ReadAsStringAsync();

            var request = JsonConvert.DeserializeObject<PhotoUploadModel>(body);

            // Function input comes from the request content.
            string instanceId = await starter.StartNewAsync("PhotosOrchestrator", request);

            log.LogInformation($"Started orchestration with ID = '{instanceId}'.");

            return starter.CreateCheckStatusResponse(req, instanceId);
        }

        [FunctionName("PhotosOrchestrator")]
        public static async Task<dynamic> RunOrchestrator(
            [OrchestrationTrigger] IDurableOrchestrationContext context)
        {
            var model = context.GetInput<PhotoUploadModel>();
            var photoBytes = await context.CallActivityAsync<byte[]>("PhotosStorage", model);
            var analysis = await context.CallActivityAsync<dynamic>("PhotosAnalyzer", photoBytes.ToList());
            return analysis;
        }
    }
}