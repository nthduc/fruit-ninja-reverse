.class public Lcom/applovin/impl/sdk/k$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:I

.field public G:Ljava/lang/String;

.field public H:J

.field public I:J

.field public J:Lcom/applovin/impl/sdk/k$e;

.field public K:Ljava/lang/Boolean;

.field public L:Ljava/lang/Boolean;

.field public M:Ljava/lang/Boolean;

.field public N:Z

.field public O:F

.field public P:F

.field public Q:J

.field public R:I

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/util/Locale;

.field public l:Ljava/lang/String;

.field public m:F

.field public n:I

.field public o:F

.field public p:F

.field public q:D

.field public r:D

.field public s:I

.field public t:Z

.field public u:Lcom/applovin/impl/sdk/k$c;

.field public v:J

.field public w:F

.field public x:I

.field public y:I

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/applovin/impl/sdk/k$d;->F:I

    new-instance v0, Lcom/applovin/impl/sdk/k$e;

    invoke-direct {v0}, Lcom/applovin/impl/sdk/k$e;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/k$d;->J:Lcom/applovin/impl/sdk/k$e;

    sget v0, Lcom/applovin/impl/sdk/e;->a:I

    iput v0, p0, Lcom/applovin/impl/sdk/k$d;->R:I

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/k$d;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "platform"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/applovin/impl/sdk/k$d;->c:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "api_level"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/applovin/impl/sdk/k$d;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "model"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/applovin/impl/sdk/k$d;->k:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "locale"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/applovin/impl/sdk/k$d;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "brand"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/applovin/impl/sdk/k$d;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "brand_name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/applovin/impl/sdk/k$d;->g:Ljava/lang/String;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hardware"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/applovin/impl/sdk/k$d;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "revision"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/applovin/impl/sdk/k$d;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "os"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/applovin/impl/sdk/k$d;->l:Ljava/lang/String;

    const-string v2, "orientation_lock"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/applovin/impl/sdk/k$d;->i:Ljava/lang/String;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "country_code"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/applovin/impl/sdk/k$d;->j:Ljava/lang/String;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "carrier"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, p0, Lcom/applovin/impl/sdk/k$d;->r:D

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tz_offset"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/applovin/impl/sdk/k$d;->N:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "aida"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/applovin/impl/sdk/k$d;->t:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "adr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/applovin/impl/sdk/k$d;->x:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "volume"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/applovin/impl/sdk/k$d;->y:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sb"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/applovin/impl/sdk/k$d;->A:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sim"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/applovin/impl/sdk/k$d;->B:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "gy"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/applovin/impl/sdk/k$d;->C:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "is_tablet"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/applovin/impl/sdk/k$d;->D:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tv"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/applovin/impl/sdk/k$d;->E:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "vs"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/applovin/impl/sdk/k$d;->F:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lpm"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, p0, Lcom/applovin/impl/sdk/k$d;->H:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fs"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, p0, Lcom/applovin/impl/sdk/k$d;->I:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tds"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/applovin/impl/sdk/k$d;->J:Lcom/applovin/impl/sdk/k$e;

    iget-wide v1, v1, Lcom/applovin/impl/sdk/k$e;->b:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fm"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/applovin/impl/sdk/k$d;->J:Lcom/applovin/impl/sdk/k$e;

    iget-wide v1, v1, Lcom/applovin/impl/sdk/k$e;->a:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tm"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/applovin/impl/sdk/k$d;->J:Lcom/applovin/impl/sdk/k$e;

    iget-wide v1, v1, Lcom/applovin/impl/sdk/k$e;->c:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lmt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/applovin/impl/sdk/k$d;->J:Lcom/applovin/impl/sdk/k$e;

    iget-boolean v1, v1, Lcom/applovin/impl/sdk/k$e;->d:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lm"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/applovin/impl/sdk/k$d;->m:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "adns"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/applovin/impl/sdk/k$d;->n:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "adnsd"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/applovin/impl/sdk/k$d;->o:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "xdpi"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/applovin/impl/sdk/k$d;->p:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ydpi"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, p0, Lcom/applovin/impl/sdk/k$d;->q:D

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    const-string v2, "screen_size_in"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, p0, Lcom/applovin/impl/sdk/k$d;->v:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "af"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/applovin/impl/sdk/k$d;->w:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "font"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, p0, Lcom/applovin/impl/sdk/k$d;->Q:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bt_ms"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/applovin/impl/sdk/k$d;->s:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "wvvc"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/applovin/impl/sdk/k$d;->R:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mute_switch"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/applovin/impl/sdk/k$d;->G:Ljava/lang/String;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1cf

    iget-object v1, p0, Lcom/applovin/impl/sdk/k$d;->G:Ljava/lang/String;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "so"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1cf
    iget v1, p0, Lcom/applovin/impl/sdk/k$d;->O:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_1df

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v3, "da"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1df
    iget v1, p0, Lcom/applovin/impl/sdk/k$d;->P:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1ee

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dm"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1ee
    iget-object v1, p0, Lcom/applovin/impl/sdk/k$d;->z:Ljava/lang/String;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ua"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/k$d;->u:Lcom/applovin/impl/sdk/k$c;

    if-eqz v1, :cond_215

    iget v1, v1, Lcom/applovin/impl/sdk/k$c;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "act"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/applovin/impl/sdk/k$d;->u:Lcom/applovin/impl/sdk/k$c;

    iget v1, v1, Lcom/applovin/impl/sdk/k$c;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "acm"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_215
    iget-object v1, p0, Lcom/applovin/impl/sdk/k$d;->K:Ljava/lang/Boolean;

    if-eqz v1, :cond_222

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "huc"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_222
    iget-object v1, p0, Lcom/applovin/impl/sdk/k$d;->L:Ljava/lang/Boolean;

    if-eqz v1, :cond_22f

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "aru"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22f
    iget-object v1, p0, Lcom/applovin/impl/sdk/k$d;->M:Ljava/lang/Boolean;

    if-eqz v1, :cond_23c

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dns"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23c
    return-object v0
.end method

.method public b()Lcom/applovin/impl/sdk/k$d;
    .registers 4

    new-instance v0, Lcom/applovin/impl/sdk/k$d;

    invoke-direct {v0}, Lcom/applovin/impl/sdk/k$d;-><init>()V

    iget-wide v1, p0, Lcom/applovin/impl/sdk/k$d;->v:J

    iput-wide v1, v0, Lcom/applovin/impl/sdk/k$d;->v:J

    iget v1, p0, Lcom/applovin/impl/sdk/k$d;->c:I

    iput v1, v0, Lcom/applovin/impl/sdk/k$d;->c:I

    iget-object v1, p0, Lcom/applovin/impl/sdk/k$d;->u:Lcom/applovin/impl/sdk/k$c;

    iput-object v1, v0, Lcom/applovin/impl/sdk/k$d;->u:Lcom/applovin/impl/sdk/k$c;

    iget-wide v1, p0, Lcom/applovin/impl/sdk/k$d;->Q:J

    iput-wide v1, v0, Lcom/applovin/impl/sdk/k$d;->Q:J

    iget-object v1, p0, Lcom/applovin/impl/sdk/k$d;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/applovin/impl/sdk/k$d;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/applovin/impl/sdk/k$d;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/applovin/impl/sdk/k$d;->f:Ljava/lang/String;

    iget v1, p0, Lcom/applovin/impl/sdk/k$d;->y:I

    iput v1, v0, Lcom/applovin/impl/sdk/k$d;->y:I

    iget-object v1, p0, Lcom/applovin/impl/sdk/k$d;->j:Ljava/lang/String;

    iput-object v1, v0, Lcom/applovin/impl/sdk/k$d;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/applovin/impl/sdk/k$d;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/applovin/impl/sdk/k$d;->i:Ljava/lang/String;

    iget v1, p0, Lcom/applovin/impl/sdk/k$d;->m:F

    iput v1, v0, Lcom/applovin/impl/sdk/k$d;->m:F

    iget v1, p0, Lcom/applovin/impl/sdk/k$d;->n:I

    iput v1, v0, Lcom/applovin/impl/sdk/k$d;->n:I

    iget v1, p0, Lcom/applovin/impl/sdk/k$d;->O:F

    iput v1, v0, Lcom/applovin/impl/sdk/k$d;->O:F

    iget v1, p0, Lcom/applovin/impl/sdk/k$d;->P:F

    iput v1, v0, Lcom/applovin/impl/sdk/k$d;->P:F

    iget-boolean v1, p0, Lcom/applovin/impl/sdk/k$d;->t:Z

    iput-boolean v1, v0, Lcom/applovin/impl/sdk/k$d;->t:Z

    iget-wide v1, p0, Lcom/applovin/impl/sdk/k$d;->H:J

    iput-wide v1, v0, Lcom/applovin/impl/sdk/k$d;->H:J

    iget v1, p0, Lcom/applovin/impl/sdk/k$d;->w:F

    iput v1, v0, Lcom/applovin/impl/sdk/k$d;->w:F

    iget-object v1, p0, Lcom/applovin/impl/sdk/k$d;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/applovin/impl/sdk/k$d;->g:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/applovin/impl/sdk/k$d;->B:Z

    iput-boolean v1, v0, Lcom/applovin/impl/sdk/k$d;->B:Z

    iget-object v1, p0, Lcom/applovin/impl/sdk/k$d;->K:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/applovin/impl/sdk/k$d;->K:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/applovin/impl/sdk/k$d;->L:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/applovin/impl/sdk/k$d;->L:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/applovin/impl/sdk/k$d;->M:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/applovin/impl/sdk/k$d;->M:Ljava/lang/Boolean;

    iget-boolean v1, p0, Lcom/applovin/impl/sdk/k$d;->A:Z

    iput-boolean v1, v0, Lcom/applovin/impl/sdk/k$d;->A:Z

    iget-boolean v1, p0, Lcom/applovin/impl/sdk/k$d;->N:Z

    iput-boolean v1, v0, Lcom/applovin/impl/sdk/k$d;->N:Z

    iget-boolean v1, p0, Lcom/applovin/impl/sdk/k$d;->C:Z

    iput-boolean v1, v0, Lcom/applovin/impl/sdk/k$d;->C:Z

    iget-boolean v1, p0, Lcom/applovin/impl/sdk/k$d;->D:Z

    iput-boolean v1, v0, Lcom/applovin/impl/sdk/k$d;->D:Z

    iget-object v1, p0, Lcom/applovin/impl/sdk/k$d;->k:Ljava/util/Locale;

    iput-object v1, v0, Lcom/applovin/impl/sdk/k$d;->k:Ljava/util/Locale;

    iget-object v1, p0, Lcom/applovin/impl/sdk/k$d;->J:Lcom/applovin/impl/sdk/k$e;

    iput-object v1, v0, Lcom/applovin/impl/sdk/k$d;->J:Lcom/applovin/impl/sdk/k$e;

    iget-object v1, p0, Lcom/applovin/impl/sdk/k$d;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/applovin/impl/sdk/k$d;->d:Ljava/lang/String;

    iget v1, p0, Lcom/applovin/impl/sdk/k$d;->R:I

    iput v1, v0, Lcom/applovin/impl/sdk/k$d;->R:I

    iget-object v1, p0, Lcom/applovin/impl/sdk/k$d;->l:Ljava/lang/String;

    iput-object v1, v0, Lcom/applovin/impl/sdk/k$d;->l:Ljava/lang/String;

    iget-object v1, p0, Lcom/applovin/impl/sdk/k$d;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/applovin/impl/sdk/k$d;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/applovin/impl/sdk/k$d;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/applovin/impl/sdk/k$d;->a:Ljava/lang/String;

    iget v1, p0, Lcom/applovin/impl/sdk/k$d;->F:I

    iput v1, v0, Lcom/applovin/impl/sdk/k$d;->F:I

    iget-object v1, p0, Lcom/applovin/impl/sdk/k$d;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/applovin/impl/sdk/k$d;->h:Ljava/lang/String;

    iget-wide v1, p0, Lcom/applovin/impl/sdk/k$d;->q:D

    iput-wide v1, v0, Lcom/applovin/impl/sdk/k$d;->q:D

    iget-object v1, p0, Lcom/applovin/impl/sdk/k$d;->G:Ljava/lang/String;

    iput-object v1, v0, Lcom/applovin/impl/sdk/k$d;->G:Ljava/lang/String;

    iget-wide v1, p0, Lcom/applovin/impl/sdk/k$d;->r:D

    iput-wide v1, v0, Lcom/applovin/impl/sdk/k$d;->r:D

    iget-wide v1, p0, Lcom/applovin/impl/sdk/k$d;->I:J

    iput-wide v1, v0, Lcom/applovin/impl/sdk/k$d;->I:J

    iget-object v1, p0, Lcom/applovin/impl/sdk/k$d;->z:Ljava/lang/String;

    iput-object v1, v0, Lcom/applovin/impl/sdk/k$d;->z:Ljava/lang/String;

    iget v1, p0, Lcom/applovin/impl/sdk/k$d;->x:I

    iput v1, v0, Lcom/applovin/impl/sdk/k$d;->x:I

    iget-boolean v1, p0, Lcom/applovin/impl/sdk/k$d;->E:Z

    iput-boolean v1, v0, Lcom/applovin/impl/sdk/k$d;->E:Z

    iget v1, p0, Lcom/applovin/impl/sdk/k$d;->s:I

    iput v1, v0, Lcom/applovin/impl/sdk/k$d;->s:I

    iget v1, p0, Lcom/applovin/impl/sdk/k$d;->o:F

    iput v1, v0, Lcom/applovin/impl/sdk/k$d;->o:F

    iget v1, p0, Lcom/applovin/impl/sdk/k$d;->p:F

    iput v1, v0, Lcom/applovin/impl/sdk/k$d;->p:F

    return-object v0
.end method
