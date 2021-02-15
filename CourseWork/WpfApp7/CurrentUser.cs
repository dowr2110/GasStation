using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WpfApp7
{
    public static class CurrentUser
    {
        private static int id;

        public static void SetUserId(int userid)
        {
            id = userid;
        }

        public static int GetUserId()
        {
            return id;
        }
    }
}
