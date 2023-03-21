using Photos.AnalyzerService.Abstractions;
using System;
using System.Threading.Tasks;

namespace Photos.AnalyzerService
{
    public class ComputerVisionAnalyzerService : IAnalyzerService
    {
        public Task<dynamic> AnalyzeAsync(byte[] image)
        {
            throw new NotImplementedException();
        }
    }
}