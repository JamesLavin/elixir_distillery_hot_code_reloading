use Mix.Releases.Config,
    default_release: :default,
    default_environment: :dev

environment :dev do
  set dev_mode: true
  set include_erts: false
  set cookie: :"o}CSmrSp2Yf`u0Vr1IQ*gC7^m&j^{cgFe;L^T9/IMA=Y_1MJ]z([Oc)>j]%Pd}!H"
end

environment :prod do
  set include_erts: true
  set include_src: false
  set cookie: :"sbHQbIt@`[OrHls.WD{T6SW__d*B@o/1T!H?ryWM:TUPly4{3y42$0GCH!FZsZWb"
  set commands: [
    "ecto.migrate": "rel/commands/ecto_migrate",
    "ecto.create": "rel/commands/ecto_create",
    "ecto.drop": "rel/commands/ecto_drop"
  ]
end

release :phoenix_env_settings do
  set version: current_version(:phoenix_env_settings)
end

