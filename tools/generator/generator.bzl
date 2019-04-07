def _generator_rule_impl(ctx):
    args = ctx.actions.args()

    args.add(ctx.outputs.out.path)

    ctx.actions.run(
        inputs = [],
        outputs = [ctx.outputs.out],
        arguments = [args],
        progress_message = "Generating %s" % ctx.outputs.out.short_path,
        executable = ctx.executable._generator,
    )

generator_rule = rule(
    implementation=_generator_rule_impl,
    attrs={
        "out": attr.output(mandatory=True),
        "_generator": attr.label(
            executable=True,
            cfg='host',
            default=Label("//tools/generator:generator")),
    },
)