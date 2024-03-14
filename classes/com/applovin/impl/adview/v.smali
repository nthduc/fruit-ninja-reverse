.class public final Lcom/applovin/impl/adview/v;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/applovin/impl/sdk/j;

.field private b:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/applovin/impl/adview/v;->a:Lcom/applovin/impl/sdk/j;

    iput-object p1, p0, Lcom/applovin/impl/adview/v;->b:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method a()Ljava/lang/Integer;
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/adview/v;->b:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/applovin/impl/adview/v;->a:Lcom/applovin/impl/sdk/j;

    const/4 v2, 0x0

    const-string v3, "mixed_content_mode"

    invoke-static {v0, v3, v2, v1}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    const-string v1, "always_allow"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v0, 0x0

    :goto_1a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1f
    const-string v1, "never_allow"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    const/4 v0, 0x1

    goto :goto_1a

    :cond_29
    const-string v1, "compatibility_mode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 v0, 0x2

    goto :goto_1a

    :cond_33
    return-object v2
.end method

.method b()Landroid/webkit/WebSettings$PluginState;
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/adview/v;->b:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/applovin/impl/adview/v;->a:Lcom/applovin/impl/sdk/j;

    const/4 v2, 0x0

    const-string v3, "plugin_state"

    invoke-static {v0, v3, v2, v1}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    sget-object v0, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    return-object v0

    :cond_1c
    const-string v1, "on_demand"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    sget-object v0, Landroid/webkit/WebSettings$PluginState;->ON_DEMAND:Landroid/webkit/WebSettings$PluginState;

    return-object v0

    :cond_27
    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    sget-object v0, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    return-object v0

    :cond_32
    return-object v2
.end method

.method c()Ljava/lang/Boolean;
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/adview/v;->b:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/applovin/impl/adview/v;->a:Lcom/applovin/impl/sdk/j;

    const-string v2, "allow_file_access"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/impl/sdk/j;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method d()Ljava/lang/Boolean;
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/adview/v;->b:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/applovin/impl/adview/v;->a:Lcom/applovin/impl/sdk/j;

    const-string v2, "load_with_overview_mode"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/impl/sdk/j;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method e()Ljava/lang/Boolean;
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/adview/v;->b:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/applovin/impl/adview/v;->a:Lcom/applovin/impl/sdk/j;

    const-string v2, "use_wide_view_port"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/impl/sdk/j;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method f()Ljava/lang/Boolean;
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/adview/v;->b:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/applovin/impl/adview/v;->a:Lcom/applovin/impl/sdk/j;

    const-string v2, "allow_content_access"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/impl/sdk/j;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method g()Ljava/lang/Boolean;
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/adview/v;->b:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/applovin/impl/adview/v;->a:Lcom/applovin/impl/sdk/j;

    const-string v2, "use_built_in_zoom_controls"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/impl/sdk/j;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method h()Ljava/lang/Boolean;
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/adview/v;->b:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/applovin/impl/adview/v;->a:Lcom/applovin/impl/sdk/j;

    const-string v2, "display_zoom_controls"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/impl/sdk/j;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method i()Ljava/lang/Boolean;
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/adview/v;->b:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/applovin/impl/adview/v;->a:Lcom/applovin/impl/sdk/j;

    const-string v2, "save_form_data"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/impl/sdk/j;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method j()Ljava/lang/Boolean;
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/adview/v;->b:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/applovin/impl/adview/v;->a:Lcom/applovin/impl/sdk/j;

    const-string v2, "geolocation_enabled"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/impl/sdk/j;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method k()Ljava/lang/Boolean;
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/adview/v;->b:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/applovin/impl/adview/v;->a:Lcom/applovin/impl/sdk/j;

    const-string v2, "need_initial_focus"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/impl/sdk/j;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method l()Ljava/lang/Boolean;
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/adview/v;->b:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/applovin/impl/adview/v;->a:Lcom/applovin/impl/sdk/j;

    const-string v2, "allow_file_access_from_file_urls"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/impl/sdk/j;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method m()Ljava/lang/Boolean;
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/adview/v;->b:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/applovin/impl/adview/v;->a:Lcom/applovin/impl/sdk/j;

    const-string v2, "allow_universal_access_from_file_urls"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/impl/sdk/j;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method n()Ljava/lang/Boolean;
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/adview/v;->b:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/applovin/impl/adview/v;->a:Lcom/applovin/impl/sdk/j;

    const-string v2, "offscreen_pre_raster"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/impl/sdk/j;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
