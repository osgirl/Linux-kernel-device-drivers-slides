#include <linux/module.h>

int example_init(void)
{
	printk(KERN_CRIT "Hello world! :-)\n");

	return 0;
}

void example_exit(void)
{
	printk(KERN_CRIT "Goodbye cruel world... :-(\n");
}

module_init(example_init);
module_exit(example_exit);

MODULE_LICENSE(EXAMPLE_LICENSE);
