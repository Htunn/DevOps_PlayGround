using Microsoft.Azure.CognitiveServices.Vision.ComputerVision;
using Microsoft.Extensions.Configuration;
using Photos.AnalyzerService.Abstractions;
using System.IO;
using System.Linq;
using System.Threading.Tasks;

namespace Photos.AnalyzerService
{
    public class ComputerVisionAnalyzerService : IAnalyzerService
    {
        private readonly ComputerVisionClient client;
        public ComputerVisionAnalyzerService(IConfiguration configuration)
        {
            var visionKey = configuration["VisionKey"];
            var visionEndpoint = configuration["VisionEndpoint"];
            client = new ComputerVisionClient(new ApiKeyServiceClientCredentials(visionKey))
            {
                Endpoint = visionEndpoint
            };
        }
        public async Task<dynamic> AnalyzeAsync(byte[] image)
        {
            using var ms = new MemoryStream(image);
            var imageAnalysis = await client.AnalyzeImageInStreamAsync(ms);
            var result = new
            {
                metadata = new
                {
                    width = imageAnalysis.Metadata.Width,
                    height = imageAnalysis.Metadata.Height,
                    format = imageAnalysis.Metadata.Format
                },
                categories = imageAnalysis.Categories.Select(c => c.Name).ToArray()
            };
            return result;
        }
    }
}