import random
import string

__version__ = '1.0.0'


class CustomLib(object):
    ROBOT_LIBRARY_VERSION = __version__
    ROBOT_LIBRARY_SCOPE = 'GLOBAL'

    def get_random_name(self, email_length):
        letters = string.ascii_lowercase[:12]
        return ''.join(random.choice(letters) for i in range(email_length))

    def generate_random_emails(self, length):

        domains = ["hotmail.com", "gmail.com", "aol.com",
                   "mail.com", "mail.kz", "yahoo.com"]

        return [self.get_random_name(length)
                + '@'
                + random.choice(domains)]
    
class _List(object):

    def convert_to_list(self, item):
        """Converts the given ``item`` to a Python ``list`` type.

        Mainly useful for converting tuples and other iterable to lists.
        Use `Create List` from the BuiltIn library for constructing new lists.
        """
        return list(item)
    
    def extract_email_content(self, email_body):
        regex = 'FB-([0-9]{5})'
        pattern = re.compile(regex)
        matches = pattern.match(email_body)
        content = matches.group(1)
        return content