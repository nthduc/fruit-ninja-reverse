.class Lcom/applovin/impl/sdk/d/b;
.super Lcom/applovin/impl/sdk/d/a;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/j;)V
    .registers 3

    const-string v0, "TaskApiSubmitData"

    invoke-direct {p0, v0, p1}, Lcom/applovin/impl/sdk/d/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/d/b;Lorg/json/JSONObject;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/d/b;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 7

    const-string v0, "sdk_update_message"

    :try_start_2
    iget-object v1, p0, Lcom/applovin/impl/sdk/d/b;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->Q()Lcom/applovin/impl/sdk/c/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/c/f;->c()V

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/h;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/b;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->E()Lcom/applovin/impl/sdk/b/c;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->Q:Lcom/applovin/impl/sdk/b/b;

    const-string v3, "device_id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/b/c;->a(Lcom/applovin/impl/sdk/b/b;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/b;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->E()Lcom/applovin/impl/sdk/b/c;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->R:Lcom/applovin/impl/sdk/b/b;

    const-string v3, "device_token"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/b/c;->a(Lcom/applovin/impl/sdk/b/b;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/b;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->E()Lcom/applovin/impl/sdk/b/c;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->S:Lcom/applovin/impl/sdk/b/b;

    const-string v3, "publisher_id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/b/c;->a(Lcom/applovin/impl/sdk/b/b;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/b;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->E()Lcom/applovin/impl/sdk/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/b/c;->a()V

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/b;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v1}, Lcom/applovin/impl/sdk/utils/h;->d(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/b;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v1}, Lcom/applovin/impl/sdk/utils/h;->e(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/b;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v1}, Lcom/applovin/impl/sdk/utils/h;->g(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V

    const-string v1, "latest_version"

    const-string v2, ""

    iget-object v3, p0, Lcom/applovin/impl/sdk/d/b;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v1, v2, v3}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a7

    sget-object v2, Lcom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current SDK version ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") is outdated. Please integrate the latest version of the AppLovin SDK ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "). Doing so will improve your CPMs and ensure you have access to the latest revenue earning features."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a2

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/b;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v0, v1, v2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v1

    :cond_a2
    const-string p1, "AppLovinSdk"

    invoke-static {p1, v1}, Lcom/applovin/impl/sdk/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a7
    iget-object p1, p0, Lcom/applovin/impl/sdk/d/b;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->N()Lcom/applovin/impl/sdk/c/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/c/h;->b()V
    :try_end_b0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_b0} :catch_b1

    goto :goto_b7

    :catch_b1
    move-exception p1

    const-string v0, "Unable to parse API response"

    invoke-virtual {p0, v0, p1}, Lcom/applovin/impl/sdk/d/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_b7
    return-void
.end method

.method private b(Lorg/json/JSONObject;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/b;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->P()Lcom/applovin/impl/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->d()Lcom/applovin/impl/sdk/k$b;

    move-result-object v1

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->c()Lcom/applovin/impl/sdk/k$d;

    move-result-object v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v3, v0, Lcom/applovin/impl/sdk/k$d;->d:Ljava/lang/String;

    const-string v4, "model"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, v0, Lcom/applovin/impl/sdk/k$d;->b:Ljava/lang/String;

    const-string v4, "os"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, v0, Lcom/applovin/impl/sdk/k$d;->e:Ljava/lang/String;

    const-string v4, "brand"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, v0, Lcom/applovin/impl/sdk/k$d;->f:Ljava/lang/String;

    const-string v4, "brand_name"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, v0, Lcom/applovin/impl/sdk/k$d;->g:Ljava/lang/String;

    const-string v4, "hardware"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v3, v0, Lcom/applovin/impl/sdk/k$d;->c:I

    const-string v4, "sdk_version"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v3, v0, Lcom/applovin/impl/sdk/k$d;->h:Ljava/lang/String;

    const-string v4, "revision"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v3, v0, Lcom/applovin/impl/sdk/k$d;->m:F

    float-to-double v3, v3

    const-string v5, "adns"

    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    iget v3, v0, Lcom/applovin/impl/sdk/k$d;->n:I

    const-string v4, "adnsd"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v3, v0, Lcom/applovin/impl/sdk/k$d;->o:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    const-string v4, "xdpi"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v3, v0, Lcom/applovin/impl/sdk/k$d;->p:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ydpi"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-wide v3, v0, Lcom/applovin/impl/sdk/k$d;->q:D

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const-string v4, "screen_size_in"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-boolean v3, v0, Lcom/applovin/impl/sdk/k$d;->B:Z

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/o;->a(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "gy"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, v0, Lcom/applovin/impl/sdk/k$d;->i:Ljava/lang/String;

    const-string v4, "country_code"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, v0, Lcom/applovin/impl/sdk/k$d;->j:Ljava/lang/String;

    const-string v4, "carrier"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, v0, Lcom/applovin/impl/sdk/k$d;->l:Ljava/lang/String;

    const-string v4, "orientation_lock"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-wide v3, v0, Lcom/applovin/impl/sdk/k$d;->r:D

    const-string v5, "tz_offset"

    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    iget-boolean v3, v0, Lcom/applovin/impl/sdk/k$d;->N:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "aida"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-boolean v3, v0, Lcom/applovin/impl/sdk/k$d;->t:Z

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/o;->a(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "adr"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v3, v0, Lcom/applovin/impl/sdk/k$d;->s:I

    const-string v4, "wvvc"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v3, v0, Lcom/applovin/impl/sdk/k$d;->x:I

    const-string v4, "volume"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v3, v0, Lcom/applovin/impl/sdk/k$d;->y:I

    const-string v4, "sb"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "android"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-boolean v3, v0, Lcom/applovin/impl/sdk/k$d;->A:Z

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/o;->a(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "sim"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-boolean v3, v0, Lcom/applovin/impl/sdk/k$d;->C:Z

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/o;->a(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "is_tablet"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v3, v0, Lcom/applovin/impl/sdk/k$d;->F:I

    const-string v4, "lpm"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-boolean v3, v0, Lcom/applovin/impl/sdk/k$d;->D:Z

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/o;->a(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tv"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-boolean v3, v0, Lcom/applovin/impl/sdk/k$d;->E:Z

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/o;->a(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "vs"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-wide v3, v0, Lcom/applovin/impl/sdk/k$d;->H:J

    const-string v5, "fs"

    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-wide v3, v0, Lcom/applovin/impl/sdk/k$d;->I:J

    const-string v5, "tds"

    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v3, v0, Lcom/applovin/impl/sdk/k$d;->J:Lcom/applovin/impl/sdk/k$e;

    iget-wide v3, v3, Lcom/applovin/impl/sdk/k$e;->b:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "fm"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, v0, Lcom/applovin/impl/sdk/k$d;->J:Lcom/applovin/impl/sdk/k$e;

    iget-wide v3, v3, Lcom/applovin/impl/sdk/k$e;->a:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tm"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, v0, Lcom/applovin/impl/sdk/k$d;->J:Lcom/applovin/impl/sdk/k$e;

    iget-wide v3, v3, Lcom/applovin/impl/sdk/k$e;->c:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "lmt"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, v0, Lcom/applovin/impl/sdk/k$d;->J:Lcom/applovin/impl/sdk/k$e;

    iget-boolean v3, v3, Lcom/applovin/impl/sdk/k$e;->d:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "lm"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-wide v3, v0, Lcom/applovin/impl/sdk/k$d;->v:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "af"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v3, v0, Lcom/applovin/impl/sdk/k$d;->w:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    const-string v4, "font"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-wide v3, v0, Lcom/applovin/impl/sdk/k$d;->Q:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "bt_ms"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v3, v0, Lcom/applovin/impl/sdk/k$d;->R:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mute_switch"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-direct {p0, v2}, Lcom/applovin/impl/sdk/d/b;->f(Lorg/json/JSONObject;)V

    iget-object v3, v0, Lcom/applovin/impl/sdk/k$d;->K:Ljava/lang/Boolean;

    if-eqz v3, :cond_17e

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "huc"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_17e
    iget-object v3, v0, Lcom/applovin/impl/sdk/k$d;->L:Ljava/lang/Boolean;

    if-eqz v3, :cond_18b

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "aru"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_18b
    iget-object v3, v0, Lcom/applovin/impl/sdk/k$d;->M:Ljava/lang/Boolean;

    if-eqz v3, :cond_198

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "dns"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_198
    iget-object v3, v0, Lcom/applovin/impl/sdk/k$d;->u:Lcom/applovin/impl/sdk/k$c;

    if-eqz v3, :cond_1aa

    iget v4, v3, Lcom/applovin/impl/sdk/k$c;->a:I

    const-string v5, "act"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v3, v3, Lcom/applovin/impl/sdk/k$c;->b:I

    const-string v4, "acm"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1aa
    iget-object v3, v0, Lcom/applovin/impl/sdk/k$d;->z:Ljava/lang/String;

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1bb

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ua"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1bb
    iget-object v3, v0, Lcom/applovin/impl/sdk/k$d;->G:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1cc

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "so"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1cc
    iget-object v3, v0, Lcom/applovin/impl/sdk/k$d;->k:Ljava/util/Locale;

    if-eqz v3, :cond_1dd

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "locale"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1dd
    iget v3, v0, Lcom/applovin/impl/sdk/k$d;->O:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1ec

    iget v3, v0, Lcom/applovin/impl/sdk/k$d;->O:F

    float-to-double v5, v3

    const-string v3, "da"

    invoke-virtual {v2, v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_1ec
    iget v3, v0, Lcom/applovin/impl/sdk/k$d;->P:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1fa

    iget v0, v0, Lcom/applovin/impl/sdk/k$d;->P:F

    float-to-double v3, v0

    const-string v0, "dm"

    invoke-virtual {v2, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_1fa
    const-string v0, "device_info"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v2, v1, Lcom/applovin/impl/sdk/k$b;->c:Ljava/lang/String;

    const-string v3, "package_name"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, v1, Lcom/applovin/impl/sdk/k$b;->d:Ljava/lang/String;

    const-string v3, "installer_name"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, v1, Lcom/applovin/impl/sdk/k$b;->a:Ljava/lang/String;

    const-string v3, "app_name"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, v1, Lcom/applovin/impl/sdk/k$b;->b:Ljava/lang/String;

    const-string v3, "app_version"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-wide v2, v1, Lcom/applovin/impl/sdk/k$b;->g:J

    const-string v4, "installed_at"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v2, v1, Lcom/applovin/impl/sdk/k$b;->e:Ljava/lang/String;

    const-string v3, "tg"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v2, Lcom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    const-string v3, "applovin_sdk_version"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/b;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/j;->J()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "first_install"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/b;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/j;->K()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "first_install_v2"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-boolean v2, v1, Lcom/applovin/impl/sdk/k$b;->h:Z

    const-string v3, "test_ads"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-boolean v1, v1, Lcom/applovin/impl/sdk/k$b;->f:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "debug"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/b;->b:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->dM:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27c

    const-string v2, "plugin_version"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_27c
    iget-object v1, p0, Lcom/applovin/impl/sdk/d/b;->b:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->dF:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2a3

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/b;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a3

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/b;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cuid"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2a3
    iget-object v1, p0, Lcom/applovin/impl/sdk/d/b;->b:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->dI:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2be

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/b;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->j()Ljava/lang/String;

    move-result-object v1

    const-string v2, "compass_random_token"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2be
    iget-object v1, p0, Lcom/applovin/impl/sdk/d/b;->b:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->dK:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2d9

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/b;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "applovin_random_token"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2d9
    const-string v1, "app_info"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private c(Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/b;->b:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->eh:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/b;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->N()Lcom/applovin/impl/sdk/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/c/h;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "stats"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1f
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/b;->b:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->Z:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/b;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/network/d;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_42

    const-string v1, "network_response_codes"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_42
    iget-object p1, p0, Lcom/applovin/impl/sdk/d/b;->b:Lcom/applovin/impl/sdk/j;

    sget-object v0, Lcom/applovin/impl/sdk/b/b;->aa:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_59

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/b;->f()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/applovin/impl/sdk/network/d;->a(Landroid/content/Context;)V

    :cond_59
    return-void
.end method

.method private d(Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/b;->b:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->en:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/b;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->Q()Lcom/applovin/impl/sdk/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/c/f;->a()Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_27

    const-string v1, "errors"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_27
    return-void
.end method

.method private e(Lorg/json/JSONObject;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/b;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v0}, Lcom/applovin/impl/sdk/network/b;->a(Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/b;->b:Lcom/applovin/impl/sdk/j;

    const-string v2, "2.0/device"

    invoke-static {v2, v1}, Lcom/applovin/impl/sdk/utils/h;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/b$a;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/b;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v2, v1}, Lcom/applovin/impl/sdk/utils/h;->b(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/b$a;->c(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/b;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/h;->e(Lcom/applovin/impl/sdk/j;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/b$a;->a(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/b$a;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/network/b$a;->a(Lorg/json/JSONObject;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/network/b$a;->a(Ljava/lang/Object;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/b;->b:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->dq:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/network/b$a;->a(I)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/b$a;->a()Lcom/applovin/impl/sdk/network/b;

    move-result-object p1

    new-instance v0, Lcom/applovin/impl/sdk/d/b$1;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/b;->b:Lcom/applovin/impl/sdk/j;

    invoke-direct {v0, p0, p1, v1}, Lcom/applovin/impl/sdk/d/b$1;-><init>(Lcom/applovin/impl/sdk/d/b;Lcom/applovin/impl/sdk/network/b;Lcom/applovin/impl/sdk/j;)V

    sget-object p1, Lcom/applovin/impl/sdk/b/b;->aI:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/d/y;->a(Lcom/applovin/impl/sdk/b/b;)V

    sget-object p1, Lcom/applovin/impl/sdk/b/b;->aJ:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/d/y;->b(Lcom/applovin/impl/sdk/b/b;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/d/b;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->M()Lcom/applovin/impl/sdk/d/s;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/d/s;->a(Lcom/applovin/impl/sdk/d/a;)V

    return-void
.end method

.method private f(Lorg/json/JSONObject;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/b;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->P()Lcom/applovin/impl/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->e()Lcom/applovin/impl/sdk/k$a;

    move-result-object v0

    iget-object v1, v0, Lcom/applovin/impl/sdk/k$a;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    const-string v2, "idfa"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_17
    iget-boolean v0, v0, Lcom/applovin/impl/sdk/k$a;->a:Z

    const-string v1, "dnt"

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_22} :catch_23

    goto :goto_29

    :catch_23
    move-exception p1

    const-string v0, "Failed to populate advertising info"

    invoke-virtual {p0, v0, p1}, Lcom/applovin/impl/sdk/d/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_29
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    const-string v0, "Submitting user data..."

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/b;->b(Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/d/b;->b(Lorg/json/JSONObject;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/d/b;->c(Lorg/json/JSONObject;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/d/b;->d(Lorg/json/JSONObject;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/d/b;->e(Lorg/json/JSONObject;)V
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_1d

    :catch_17
    move-exception v0

    const-string v1, "Unable to build JSON message with collected data"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/d/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1d
    return-void
.end method
