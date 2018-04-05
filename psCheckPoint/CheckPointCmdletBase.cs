using System;
using System.Management.Automation;

namespace psCheckPoint
{
    /// <summary>
    /// <para type="description">Action to take when changing membership of object.</para>
    /// </summary>
    public enum MembershipActions
    {
        /// <summary>
        /// Replace existing membership with new items
        /// </summary>
        Replace,

        /// <summary>
        /// Add new items to existing membership
        /// </summary>
        Add,

        /// <summary>
        /// Remove items from existing membership
        /// </summary>
        Remove
    };

    /// <summary>
    /// <para type="description">Base class for other Cmdlets that call a Web-API</para>
    /// </summary>
    public abstract class CheckPointCmdletBase : PSCmdlet
    {
        #region Properties

        /// <summary>
        /// <para type="description">Session object from Open-CheckPointSession</para>
        /// </summary>
        [Parameter()]
        public Koopman.CheckPoint.Session Session { get; set; }

        #endregion Properties

        #region Methods

        /// <summary>
        /// <para type="description">Used by Cmdlet parameters that accept arrays</para>
        /// <para type="description">
        /// Allows arrays to also be accepted in CSV format with either a , (comma) or ; (semicolon) separator.
        /// </para>
        /// </summary>
        protected static string[] CreateArray(string[] values)
        {
            if (values == null)
            {
                return null;
            }
            else
            {
                if (values.Length == 1)
                {
                    string value = values[0];
                    values = value.Split(new char[] { ',', ';' }, StringSplitOptions.RemoveEmptyEntries);
                }

                return values;
            }
        }

        /// <inheritdoc />
        protected override void BeginProcessing()
        {
            if (Session == null)
            {
                Session = SessionState.PSVariable.GetValue("CheckPointSession") as Koopman.CheckPoint.Session;
                if (Session == null)
                {
                    throw new PSArgumentNullException("Session");
                }
            }
        }

        #endregion Methods

        /*
        /// <summary>
        /// <para type="description">
        /// Used OnSerializing Events in Set methods to control how set will process groups based on action.
        /// </para>
        /// </summary>
        protected static dynamic ProcessGroupAction(MembershipActions action, String[] values)
        {
            if (values != null && values.Length > 0)
            {
                switch (action)
                {
                    case MembershipActions.Add:
                        {
                            Hashtable r = new Hashtable
                            {
                                ["add"] = CreateArray(values)
                            };
                            return r;
                        }
                    case MembershipActions.Remove:
                        {
                            Hashtable r = new Hashtable
                            {
                                ["remove"] = CreateArray(values)
                            };
                            return r;
                        }
                    default:
                        {
                            return CreateArray(values);
                        }
                }
            }
            else { return null; }
        }

        protected static bool IsUID(string input)
        {
            return Regex.IsMatch(input, @"^\w{8}-\w{4}-\w{4}-\w{4}-\w{12}$");
        }

        protected static void SetInputIdentifier(PSObject input, string type, out string uid, out string name)
        {
            uid = null;
            name = null;

            if (input.BaseObject is CheckPointObject)
            {
                if ((input.BaseObject as CheckPointObject).Type != type)
                {
                    throw new PSInvalidCastException("Input is of invalid type.");
                }
                uid = (input.BaseObject as CheckPointObject).UID;
            }
            else if (input.BaseObject is string)
            {
                string str = (input.BaseObject as string);
                if (IsUID(str))
                {
                    uid = str;
                }
                else
                {
                    name = str;
                }
            }
            else
            {
                throw new PSInvalidCastException("Input is of invalid type.");
            }
        }
        */
    }
}