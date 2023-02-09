using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Text;

namespace Photos.Models
{
    public class PhotoUploadModel
    {
        [JsonProperty("name")]
        public string Name { get; set; }

        [JsonProperty("description")]
        public string Description { get; set; }

        [JsonProperty("tags")]
        public string[] Tags { get; set; }

        [JsonProperty("photo")]
        public string Photo { get; set; }
    }
}
