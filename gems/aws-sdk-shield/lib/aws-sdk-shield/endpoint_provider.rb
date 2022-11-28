# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Shield
  class EndpointProvider
    def initialize(rule_set = nil)
      @@rule_set ||= begin
        endpoint_rules = Aws::Json.load(Base64.decode64(RULES))
        Aws::Endpoints::RuleSet.new(
          version: endpoint_rules['version'],
          service_id: endpoint_rules['serviceId'],
          parameters: endpoint_rules['parameters'],
          rules: endpoint_rules['rules']
        )
      end
      @provider = Aws::Endpoints::RulesProvider.new(rule_set || @@rule_set)
    end

    def resolve_endpoint(parameters)
      @provider.resolve_endpoint(parameters)
    end

    # @api private
    RULES = <<-JSON
eyJ2ZXJzaW9uIjoiMS4wIiwicGFyYW1ldGVycyI6eyJSZWdpb24iOnsiYnVp
bHRJbiI6IkFXUzo6UmVnaW9uIiwicmVxdWlyZWQiOmZhbHNlLCJkb2N1bWVu
dGF0aW9uIjoiVGhlIEFXUyByZWdpb24gdXNlZCB0byBkaXNwYXRjaCB0aGUg
cmVxdWVzdC4iLCJ0eXBlIjoiU3RyaW5nIn0sIlVzZUR1YWxTdGFjayI6eyJi
dWlsdEluIjoiQVdTOjpVc2VEdWFsU3RhY2siLCJyZXF1aXJlZCI6dHJ1ZSwi
ZGVmYXVsdCI6ZmFsc2UsImRvY3VtZW50YXRpb24iOiJXaGVuIHRydWUsIHVz
ZSB0aGUgZHVhbC1zdGFjayBlbmRwb2ludC4gSWYgdGhlIGNvbmZpZ3VyZWQg
ZW5kcG9pbnQgZG9lcyBub3Qgc3VwcG9ydCBkdWFsLXN0YWNrLCBkaXNwYXRj
aGluZyB0aGUgcmVxdWVzdCBNQVkgcmV0dXJuIGFuIGVycm9yLiIsInR5cGUi
OiJCb29sZWFuIn0sIlVzZUZJUFMiOnsiYnVpbHRJbiI6IkFXUzo6VXNlRklQ
UyIsInJlcXVpcmVkIjp0cnVlLCJkZWZhdWx0IjpmYWxzZSwiZG9jdW1lbnRh
dGlvbiI6IldoZW4gdHJ1ZSwgc2VuZCB0aGlzIHJlcXVlc3QgdG8gdGhlIEZJ
UFMtY29tcGxpYW50IHJlZ2lvbmFsIGVuZHBvaW50LiBJZiB0aGUgY29uZmln
dXJlZCBlbmRwb2ludCBkb2VzIG5vdCBoYXZlIGEgRklQUyBjb21wbGlhbnQg
ZW5kcG9pbnQsIGRpc3BhdGNoaW5nIHRoZSByZXF1ZXN0IHdpbGwgcmV0dXJu
IGFuIGVycm9yLiIsInR5cGUiOiJCb29sZWFuIn0sIkVuZHBvaW50Ijp7ImJ1
aWx0SW4iOiJTREs6OkVuZHBvaW50IiwicmVxdWlyZWQiOmZhbHNlLCJkb2N1
bWVudGF0aW9uIjoiT3ZlcnJpZGUgdGhlIGVuZHBvaW50IHVzZWQgdG8gc2Vu
ZCB0aGlzIHJlcXVlc3QiLCJ0eXBlIjoiU3RyaW5nIn19LCJydWxlcyI6W3si
Y29uZGl0aW9ucyI6W3siZm4iOiJhd3MucGFydGl0aW9uIiwiYXJndiI6W3si
cmVmIjoiUmVnaW9uIn1dLCJhc3NpZ24iOiJQYXJ0aXRpb25SZXN1bHQifV0s
InR5cGUiOiJ0cmVlIiwicnVsZXMiOlt7ImNvbmRpdGlvbnMiOlt7ImZuIjoi
aXNTZXQiLCJhcmd2IjpbeyJyZWYiOiJFbmRwb2ludCJ9XX0seyJmbiI6InBh
cnNlVVJMIiwiYXJndiI6W3sicmVmIjoiRW5kcG9pbnQifV0sImFzc2lnbiI6
InVybCJ9XSwidHlwZSI6InRyZWUiLCJydWxlcyI6W3siY29uZGl0aW9ucyI6
W3siZm4iOiJib29sZWFuRXF1YWxzIiwiYXJndiI6W3sicmVmIjoiVXNlRklQ
UyJ9LHRydWVdfV0sImVycm9yIjoiSW52YWxpZCBDb25maWd1cmF0aW9uOiBG
SVBTIGFuZCBjdXN0b20gZW5kcG9pbnQgYXJlIG5vdCBzdXBwb3J0ZWQiLCJ0
eXBlIjoiZXJyb3IifSx7ImNvbmRpdGlvbnMiOltdLCJ0eXBlIjoidHJlZSIs
InJ1bGVzIjpbeyJjb25kaXRpb25zIjpbeyJmbiI6ImJvb2xlYW5FcXVhbHMi
LCJhcmd2IjpbeyJyZWYiOiJVc2VEdWFsU3RhY2sifSx0cnVlXX1dLCJlcnJv
ciI6IkludmFsaWQgQ29uZmlndXJhdGlvbjogRHVhbHN0YWNrIGFuZCBjdXN0
b20gZW5kcG9pbnQgYXJlIG5vdCBzdXBwb3J0ZWQiLCJ0eXBlIjoiZXJyb3Ii
fSx7ImNvbmRpdGlvbnMiOltdLCJlbmRwb2ludCI6eyJ1cmwiOnsicmVmIjoi
RW5kcG9pbnQifSwicHJvcGVydGllcyI6e30sImhlYWRlcnMiOnt9fSwidHlw
ZSI6ImVuZHBvaW50In1dfV19LHsiY29uZGl0aW9ucyI6W3siZm4iOiJzdHJp
bmdFcXVhbHMiLCJhcmd2IjpbeyJmbiI6ImdldEF0dHIiLCJhcmd2IjpbeyJy
ZWYiOiJQYXJ0aXRpb25SZXN1bHQifSwibmFtZSJdfSwiYXdzIl19XSwidHlw
ZSI6InRyZWUiLCJydWxlcyI6W3siY29uZGl0aW9ucyI6W3siZm4iOiJib29s
ZWFuRXF1YWxzIiwiYXJndiI6W3sicmVmIjoiVXNlRklQUyJ9LHRydWVdfSx7
ImZuIjoiYm9vbGVhbkVxdWFscyIsImFyZ3YiOlt7InJlZiI6IlVzZUR1YWxT
dGFjayJ9LHRydWVdfV0sInR5cGUiOiJ0cmVlIiwicnVsZXMiOlt7ImNvbmRp
dGlvbnMiOlt7ImZuIjoiYm9vbGVhbkVxdWFscyIsImFyZ3YiOlt0cnVlLHsi
Zm4iOiJnZXRBdHRyIiwiYXJndiI6W3sicmVmIjoiUGFydGl0aW9uUmVzdWx0
In0sInN1cHBvcnRzRklQUyJdfV19LHsiZm4iOiJib29sZWFuRXF1YWxzIiwi
YXJndiI6W3RydWUseyJmbiI6ImdldEF0dHIiLCJhcmd2IjpbeyJyZWYiOiJQ
YXJ0aXRpb25SZXN1bHQifSwic3VwcG9ydHNEdWFsU3RhY2siXX1dfV0sInR5
cGUiOiJ0cmVlIiwicnVsZXMiOlt7ImNvbmRpdGlvbnMiOltdLCJlbmRwb2lu
dCI6eyJ1cmwiOiJodHRwczovL3NoaWVsZC1maXBzLntSZWdpb259LmFwaS5h
d3MiLCJwcm9wZXJ0aWVzIjp7ImF1dGhTY2hlbWVzIjpbeyJuYW1lIjoic2ln
djQiLCJzaWduaW5nTmFtZSI6InNoaWVsZCIsInNpZ25pbmdSZWdpb24iOiJ1
cy1lYXN0LTEifV19LCJoZWFkZXJzIjp7fX0sInR5cGUiOiJlbmRwb2ludCJ9
XX0seyJjb25kaXRpb25zIjpbXSwiZXJyb3IiOiJGSVBTIGFuZCBEdWFsU3Rh
Y2sgYXJlIGVuYWJsZWQsIGJ1dCB0aGlzIHBhcnRpdGlvbiBkb2VzIG5vdCBz
dXBwb3J0IG9uZSBvciBib3RoIiwidHlwZSI6ImVycm9yIn1dfSx7ImNvbmRp
dGlvbnMiOlt7ImZuIjoiYm9vbGVhbkVxdWFscyIsImFyZ3YiOlt7InJlZiI6
IlVzZUZJUFMifSx0cnVlXX1dLCJ0eXBlIjoidHJlZSIsInJ1bGVzIjpbeyJj
b25kaXRpb25zIjpbeyJmbiI6ImJvb2xlYW5FcXVhbHMiLCJhcmd2IjpbdHJ1
ZSx7ImZuIjoiZ2V0QXR0ciIsImFyZ3YiOlt7InJlZiI6IlBhcnRpdGlvblJl
c3VsdCJ9LCJzdXBwb3J0c0ZJUFMiXX1dfV0sInR5cGUiOiJ0cmVlIiwicnVs
ZXMiOlt7ImNvbmRpdGlvbnMiOltdLCJlbmRwb2ludCI6eyJ1cmwiOiJodHRw
czovL3NoaWVsZC1maXBzLnVzLWVhc3QtMS5hbWF6b25hd3MuY29tIiwicHJv
cGVydGllcyI6eyJhdXRoU2NoZW1lcyI6W3sibmFtZSI6InNpZ3Y0Iiwic2ln
bmluZ05hbWUiOiJzaGllbGQiLCJzaWduaW5nUmVnaW9uIjoidXMtZWFzdC0x
In1dfSwiaGVhZGVycyI6e319LCJ0eXBlIjoiZW5kcG9pbnQifV19LHsiY29u
ZGl0aW9ucyI6W10sImVycm9yIjoiRklQUyBpcyBlbmFibGVkIGJ1dCB0aGlz
IHBhcnRpdGlvbiBkb2VzIG5vdCBzdXBwb3J0IEZJUFMiLCJ0eXBlIjoiZXJy
b3IifV19LHsiY29uZGl0aW9ucyI6W3siZm4iOiJib29sZWFuRXF1YWxzIiwi
YXJndiI6W3sicmVmIjoiVXNlRHVhbFN0YWNrIn0sdHJ1ZV19XSwidHlwZSI6
InRyZWUiLCJydWxlcyI6W3siY29uZGl0aW9ucyI6W3siZm4iOiJib29sZWFu
RXF1YWxzIiwiYXJndiI6W3RydWUseyJmbiI6ImdldEF0dHIiLCJhcmd2Ijpb
eyJyZWYiOiJQYXJ0aXRpb25SZXN1bHQifSwic3VwcG9ydHNEdWFsU3RhY2si
XX1dfV0sInR5cGUiOiJ0cmVlIiwicnVsZXMiOlt7ImNvbmRpdGlvbnMiOltd
LCJlbmRwb2ludCI6eyJ1cmwiOiJodHRwczovL3NoaWVsZC57UmVnaW9ufS5h
cGkuYXdzIiwicHJvcGVydGllcyI6eyJhdXRoU2NoZW1lcyI6W3sibmFtZSI6
InNpZ3Y0Iiwic2lnbmluZ05hbWUiOiJzaGllbGQiLCJzaWduaW5nUmVnaW9u
IjoidXMtZWFzdC0xIn1dfSwiaGVhZGVycyI6e319LCJ0eXBlIjoiZW5kcG9p
bnQifV19LHsiY29uZGl0aW9ucyI6W10sImVycm9yIjoiRHVhbFN0YWNrIGlz
IGVuYWJsZWQgYnV0IHRoaXMgcGFydGl0aW9uIGRvZXMgbm90IHN1cHBvcnQg
RHVhbFN0YWNrIiwidHlwZSI6ImVycm9yIn1dfSx7ImNvbmRpdGlvbnMiOltd
LCJlbmRwb2ludCI6eyJ1cmwiOiJodHRwczovL3NoaWVsZC51cy1lYXN0LTEu
YW1hem9uYXdzLmNvbSIsInByb3BlcnRpZXMiOnsiYXV0aFNjaGVtZXMiOlt7
Im5hbWUiOiJzaWd2NCIsInNpZ25pbmdOYW1lIjoic2hpZWxkIiwic2lnbmlu
Z1JlZ2lvbiI6InVzLWVhc3QtMSJ9XX0sImhlYWRlcnMiOnt9fSwidHlwZSI6
ImVuZHBvaW50In1dfSx7ImNvbmRpdGlvbnMiOlt7ImZuIjoiYm9vbGVhbkVx
dWFscyIsImFyZ3YiOlt7InJlZiI6IlVzZUZJUFMifSx0cnVlXX0seyJmbiI6
ImJvb2xlYW5FcXVhbHMiLCJhcmd2IjpbeyJyZWYiOiJVc2VEdWFsU3RhY2si
fSx0cnVlXX1dLCJ0eXBlIjoidHJlZSIsInJ1bGVzIjpbeyJjb25kaXRpb25z
IjpbeyJmbiI6ImJvb2xlYW5FcXVhbHMiLCJhcmd2IjpbdHJ1ZSx7ImZuIjoi
Z2V0QXR0ciIsImFyZ3YiOlt7InJlZiI6IlBhcnRpdGlvblJlc3VsdCJ9LCJz
dXBwb3J0c0ZJUFMiXX1dfSx7ImZuIjoiYm9vbGVhbkVxdWFscyIsImFyZ3Yi
Olt0cnVlLHsiZm4iOiJnZXRBdHRyIiwiYXJndiI6W3sicmVmIjoiUGFydGl0
aW9uUmVzdWx0In0sInN1cHBvcnRzRHVhbFN0YWNrIl19XX1dLCJ0eXBlIjoi
dHJlZSIsInJ1bGVzIjpbeyJjb25kaXRpb25zIjpbXSwiZW5kcG9pbnQiOnsi
dXJsIjoiaHR0cHM6Ly9zaGllbGQtZmlwcy57UmVnaW9ufS57UGFydGl0aW9u
UmVzdWx0I2R1YWxTdGFja0Ruc1N1ZmZpeH0iLCJwcm9wZXJ0aWVzIjp7fSwi
aGVhZGVycyI6e319LCJ0eXBlIjoiZW5kcG9pbnQifV19LHsiY29uZGl0aW9u
cyI6W10sImVycm9yIjoiRklQUyBhbmQgRHVhbFN0YWNrIGFyZSBlbmFibGVk
LCBidXQgdGhpcyBwYXJ0aXRpb24gZG9lcyBub3Qgc3VwcG9ydCBvbmUgb3Ig
Ym90aCIsInR5cGUiOiJlcnJvciJ9XX0seyJjb25kaXRpb25zIjpbeyJmbiI6
ImJvb2xlYW5FcXVhbHMiLCJhcmd2IjpbeyJyZWYiOiJVc2VGSVBTIn0sdHJ1
ZV19XSwidHlwZSI6InRyZWUiLCJydWxlcyI6W3siY29uZGl0aW9ucyI6W3si
Zm4iOiJib29sZWFuRXF1YWxzIiwiYXJndiI6W3RydWUseyJmbiI6ImdldEF0
dHIiLCJhcmd2IjpbeyJyZWYiOiJQYXJ0aXRpb25SZXN1bHQifSwic3VwcG9y
dHNGSVBTIl19XX1dLCJ0eXBlIjoidHJlZSIsInJ1bGVzIjpbeyJjb25kaXRp
b25zIjpbXSwidHlwZSI6InRyZWUiLCJydWxlcyI6W3siY29uZGl0aW9ucyI6
W3siZm4iOiJzdHJpbmdFcXVhbHMiLCJhcmd2IjpbeyJyZWYiOiJSZWdpb24i
fSwiYXdzLWdsb2JhbCJdfV0sImVuZHBvaW50Ijp7InVybCI6Imh0dHBzOi8v
c2hpZWxkLWZpcHMudXMtZWFzdC0xLmFtYXpvbmF3cy5jb20iLCJwcm9wZXJ0
aWVzIjp7fSwiaGVhZGVycyI6e319LCJ0eXBlIjoiZW5kcG9pbnQifSx7ImNv
bmRpdGlvbnMiOltdLCJlbmRwb2ludCI6eyJ1cmwiOiJodHRwczovL3NoaWVs
ZC1maXBzLntSZWdpb259LntQYXJ0aXRpb25SZXN1bHQjZG5zU3VmZml4fSIs
InByb3BlcnRpZXMiOnt9LCJoZWFkZXJzIjp7fX0sInR5cGUiOiJlbmRwb2lu
dCJ9XX1dfSx7ImNvbmRpdGlvbnMiOltdLCJlcnJvciI6IkZJUFMgaXMgZW5h
YmxlZCBidXQgdGhpcyBwYXJ0aXRpb24gZG9lcyBub3Qgc3VwcG9ydCBGSVBT
IiwidHlwZSI6ImVycm9yIn1dfSx7ImNvbmRpdGlvbnMiOlt7ImZuIjoiYm9v
bGVhbkVxdWFscyIsImFyZ3YiOlt7InJlZiI6IlVzZUR1YWxTdGFjayJ9LHRy
dWVdfV0sInR5cGUiOiJ0cmVlIiwicnVsZXMiOlt7ImNvbmRpdGlvbnMiOlt7
ImZuIjoiYm9vbGVhbkVxdWFscyIsImFyZ3YiOlt0cnVlLHsiZm4iOiJnZXRB
dHRyIiwiYXJndiI6W3sicmVmIjoiUGFydGl0aW9uUmVzdWx0In0sInN1cHBv
cnRzRHVhbFN0YWNrIl19XX1dLCJ0eXBlIjoidHJlZSIsInJ1bGVzIjpbeyJj
b25kaXRpb25zIjpbXSwiZW5kcG9pbnQiOnsidXJsIjoiaHR0cHM6Ly9zaGll
bGQue1JlZ2lvbn0ue1BhcnRpdGlvblJlc3VsdCNkdWFsU3RhY2tEbnNTdWZm
aXh9IiwicHJvcGVydGllcyI6e30sImhlYWRlcnMiOnt9fSwidHlwZSI6ImVu
ZHBvaW50In1dfSx7ImNvbmRpdGlvbnMiOltdLCJlcnJvciI6IkR1YWxTdGFj
ayBpcyBlbmFibGVkIGJ1dCB0aGlzIHBhcnRpdGlvbiBkb2VzIG5vdCBzdXBw
b3J0IER1YWxTdGFjayIsInR5cGUiOiJlcnJvciJ9XX0seyJjb25kaXRpb25z
IjpbXSwidHlwZSI6InRyZWUiLCJydWxlcyI6W3siY29uZGl0aW9ucyI6W3si
Zm4iOiJzdHJpbmdFcXVhbHMiLCJhcmd2IjpbeyJyZWYiOiJSZWdpb24ifSwi
YXdzLWdsb2JhbCJdfV0sImVuZHBvaW50Ijp7InVybCI6Imh0dHBzOi8vc2hp
ZWxkLnVzLWVhc3QtMS5hbWF6b25hd3MuY29tIiwicHJvcGVydGllcyI6eyJh
dXRoU2NoZW1lcyI6W3sibmFtZSI6InNpZ3Y0Iiwic2lnbmluZ05hbWUiOiJz
aGllbGQiLCJzaWduaW5nUmVnaW9uIjoidXMtZWFzdC0xIn1dfSwiaGVhZGVy
cyI6e319LCJ0eXBlIjoiZW5kcG9pbnQifSx7ImNvbmRpdGlvbnMiOltdLCJl
bmRwb2ludCI6eyJ1cmwiOiJodHRwczovL3NoaWVsZC57UmVnaW9ufS57UGFy
dGl0aW9uUmVzdWx0I2Ruc1N1ZmZpeH0iLCJwcm9wZXJ0aWVzIjp7fSwiaGVh
ZGVycyI6e319LCJ0eXBlIjoiZW5kcG9pbnQifV19XX1dfQ==

    JSON
  end
end