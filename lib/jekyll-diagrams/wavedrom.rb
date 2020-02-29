module Jekyll
    module Diagrams
      class WavedromBlock < Block
        def render_svg(code, config)
          render_with_tempfile(build_command(config), code) do |command, input, output|
            "#{command} --input #{input} --svg #{output}"
          end
        end
  
        def build_command(config)
          'wavedrom-cli'
        end
      end
    end
  end
  
  Liquid::Template.register_tag(:wavedrom, Jekyll::Diagrams::WavedromBlock)