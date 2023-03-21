using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Extensions.DurableTask;
using Photos.AnalyzerService.Abstractions;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Photos
{
    public class PhotosAnalyzer
    {
        private readonly IAnalyzerService analyzerService;

        public PhotosAnalyzer(IAnalyzerService analyzerService)
        {
            this.analyzerService = analyzerService;
        }

        [FunctionName("PhotosAnalyzer")]
        public async Task<dynamic> Run([ActivityTrigger] List<byte> image)
        {
            return await analyzerService.AnalyzeAsync(image.ToArray());
        }
    }
}
