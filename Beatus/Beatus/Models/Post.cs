﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Beatus.Models
{
    public class Post
    {
        public string UserID { get; set; }
        public string Name { get; set; }
        public int Id { get; set; }
        public string Title { get; set; }
        public string Content { get; set; }
        public DateTime Date { get; set; }
    }
}