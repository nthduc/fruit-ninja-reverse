.class public Lcom/applovin/impl/sdk/d/s;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/d/s$b;,
        Lcom/applovin/impl/sdk/d/s$c;,
        Lcom/applovin/impl/sdk/d/s$a;
    }
.end annotation


# instance fields
.field private A:Z

.field private final a:Ljava/lang/String;

.field private final b:Lcom/applovin/impl/sdk/j;

.field private final c:Lcom/applovin/impl/sdk/q;

.field private final d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final h:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final i:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final j:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final k:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final l:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final m:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final n:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final o:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final p:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final q:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final r:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final s:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final t:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final u:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final v:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final w:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final x:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/d/s$c;",
            ">;"
        }
    .end annotation
.end field

.field private final z:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/j;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "TaskManager"

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/s;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/s;->y:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/s;->z:Ljava/lang/Object;

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/s;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/s;->c:Lcom/applovin/impl/sdk/q;

    const-string v0, "main"

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/d/s;->a(Ljava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/s;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-string v0, "timeout"

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/d/s;->a(Ljava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/s;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-string v0, "back"

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/d/s;->a(Ljava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/s;->f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-string v0, "advertising_info_collection"

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/d/s;->a(Ljava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/s;->g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-string v0, "postbacks"

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/d/s;->a(Ljava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/s;->h:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-string v0, "caching_interstitial"

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/d/s;->a(Ljava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/s;->i:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-string v0, "caching_incentivized"

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/d/s;->a(Ljava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/s;->j:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-string v0, "caching_other"

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/d/s;->a(Ljava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/s;->k:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-string v0, "reward"

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/d/s;->a(Ljava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/s;->l:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-string v0, "mediation_main"

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/d/s;->a(Ljava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/s;->m:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-string v0, "mediation_timeout"

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/d/s;->a(Ljava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/s;->n:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-string v0, "mediation_background"

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/d/s;->a(Ljava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/s;->o:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-string v0, "mediation_postbacks"

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/d/s;->a(Ljava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/s;->p:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-string v0, "mediation_banner"

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/d/s;->a(Ljava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/s;->q:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-string v0, "mediation_interstitial"

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/d/s;->a(Ljava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/s;->r:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-string v0, "mediation_incentivized"

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/d/s;->a(Ljava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/s;->s:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-string v0, "mediation_rewarded_interstitial"

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/d/s;->a(Ljava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/s;->t:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-string v0, "mediation_reward"

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/d/s;->a(Ljava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/s;->u:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v0, Lcom/applovin/impl/sdk/b/b;->cl:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "auxiliary_operations"

    invoke-direct {p0, v1, v0}, Lcom/applovin/impl/sdk/d/s;->a(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/s;->v:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v0, Lcom/applovin/impl/sdk/b/b;->cm:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "caching_operations"

    invoke-direct {p0, v1, v0}, Lcom/applovin/impl/sdk/d/s;->a(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/s;->w:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v0, Lcom/applovin/impl/sdk/b/b;->ae:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v0, "shared_thread_pool"

    invoke-direct {p0, v0, p1}, Lcom/applovin/impl/sdk/d/s;->a(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/s;->x:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-void
.end method

.method private a(Lcom/applovin/impl/sdk/d/s$a;)J
    .registers 6

    sget-object v0, Lcom/applovin/impl/sdk/d/s$a;->a:Lcom/applovin/impl/sdk/d/s$a;

    if-ne p1, v0, :cond_12

    iget-object p1, p0, Lcom/applovin/impl/sdk/d/s;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getTaskCount()J

    move-result-wide v0

    iget-object p1, p0, Lcom/applovin/impl/sdk/d/s;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    :goto_c
    invoke-virtual {p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0

    :cond_12
    sget-object v0, Lcom/applovin/impl/sdk/d/s$a;->b:Lcom/applovin/impl/sdk/d/s$a;

    if-ne p1, v0, :cond_1f

    iget-object p1, p0, Lcom/applovin/impl/sdk/d/s;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getTaskCount()J

    move-result-wide v0

    iget-object p1, p0, Lcom/applovin/impl/sdk/d/s;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    goto :goto_c

    :cond_1f
    sget-object v0, Lcom/applovin/impl/sdk/d/s$a;->c:Lcom/applovin/impl/sdk/d/s$a;

    if-ne p1, v0, :cond_2c

    iget-object p1, p0, Lcom/applovin/impl/sdk/d/s;->f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getTaskCount()J

    move-result-wide v0

    iget-object p1, p0, Lcom/applovin/impl/sdk/d/s;->f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    goto :goto_c

    :cond_2c
    sget-object v0, Lcom/applovin/impl/sdk/d/s$a;->d:Lcom/applovin/impl/sdk/d/s$a;

    if-ne p1, v0, :cond_39

    iget-object p1, p0, Lcom/applovin/impl/sdk/d/s;->g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getTaskCount()J

    move-result-wide v0

    iget-object p1, p0, Lcom/applovin/impl/sdk/d/s;->g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    goto :goto_c

    :cond_39
    sget-object v0, Lcom/applovin/impl/sdk/d/s$a;->e:Lcom/applovin/impl/sdk/d/s$a;

    if-ne p1, v0, :cond_46

    iget-object p1, p0, Lcom/applovin/impl/sdk/d/s;->h:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getTaskCount()J

    move-result-wide v0

    iget-object p1, p0, Lcom/applovin/impl/sdk/d/s;->h:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    goto :goto_c

    :cond_46
    sget-object v0, Lcom/applovin/impl/sdk/d/s$a;->f:Lcom/applovin/impl/sdk/d/s$a;

    if-ne p1, v0, :cond_53

    iget-object p1, p0, Lcom/applovin/impl/sdk/d/s;->i:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getTaskCount()J

    move-result-wide v0

    iget-object p1, p0, Lcom/applovin/impl/sdk/d/s;->i:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    goto :goto_c

    :cond_53
    sget-object v0, Lcom/applovin/impl/sdk/d/s$a;->g:Lcom/applovin/impl/sdk/d/s$a;

    if-ne p1, v0, :cond_60

    iget-object p1, p0, Lcom/applovin/impl/sdk/d/s;->j:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getTaskCount()J

    move-result-wide v0

    iget-object p1, p0, Lcom/applovin/impl/sdk/d/s;->j:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    goto :goto_c

    :cond_60
    sget-object v0, Lcom/applovin/impl/sdk/d/s$a;->h:Lcom/applovin/impl/sdk/d/s$a;

    if-ne p1, v0, :cond_6d

    iget-object p1, p0, Lcom/applovin/impl/sdk/d/s;->k:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getTaskCount()J

    move-result-wide v0

    iget-object p1, p0, Lcom/applovin/impl/sdk/d/s;->k:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    goto :goto_c

    :cond_6d
    sget-object v0, Lcom/applovin/impl/sdk/d/s$a;->i:Lcom/applovin/impl/sdk/d/s$a;

    if-ne p1, v0, :cond_7a

    iget-object p1, p0, Lcom/applovin/impl/sdk/d/s;->l:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getTaskCount()J

    move-result-wide v0

    iget-object p1, p0, Lcom/applovin/impl/sdk/d/s;->l:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    goto :goto_c

    :cond_7a
    sget-object v0, Lcom/applovin/impl/sdk/d/s$a;->j:Lcom/applovin/impl/sdk/d/s$a;

    if-ne p1, v0, :cond_87

    iget-object p1, p0, Lcom/applovin/impl/sdk/d/s;->m:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getTaskCount()J

    move-result-wide v0

    iget-object p1, p0, Lcom/applovin/impl/sdk/d/s;->m:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    goto :goto_c

    :cond_87
    sget-object v0, Lcom/applovin/impl/sdk/d/s$a;->k:Lcom/applovin/impl/sdk/d/s$a;

    if-ne p1, v0, :cond_95

    iget-object p1, p0, Lcom/applovin/impl/sdk/d/s;->n:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getTaskCount()J

    move-result-wide v0

    iget-object p1, p0, Lcom/applovin/impl/sdk/d/s;->n:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    goto/16 :goto_c

    :cond_95
    sget-object v0, Lcom/applovin/impl/sdk/d/s$a;->l:Lcom/applovin/impl/sdk/d/s$a;

    if-ne p1, v0, :cond_a3

    iget-object p1, p0, Lcom/applovin/impl/sdk/d/s;->o:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getTaskCount()J

    move-result-wide v0

    iget-object p1, p0, Lcom/applovin/impl/sdk/d/s;->o:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    goto/16 :goto_c

    :cond_a3
    sget-object v0, Lcom/applovin/impl/sdk/d/s$a;->m:Lcom/applovin/impl/sdk/d/s$a;

    if-ne p1, v0, :cond_b1

    iget-object p1, p0, Lcom/applovin/impl/sdk/d/s;->p:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getTaskCount()J

    move-result-wide v0

    iget-object p1, p0, Lcom/applovin/impl/sdk/d/s;->p:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    goto/16 :goto_c

    :cond_b1
    sget-object v0, Lcom/applovin/impl/sdk/d/s$a;->n:Lcom/applovin/impl/sdk/d/s$a;

    if-ne p1, v0, :cond_bf

    iget-object p1, p0, Lcom/applovin/impl/sdk/d/s;->q:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getTaskCount()J

    move-result-wide v0

    iget-object p1, p0, Lcom/applovin/impl/sdk/d/s;->q:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    goto/16 :goto_c

    :cond_bf
    sget-object v0, Lcom/applovin/impl/sdk/d/s$a;->o:Lcom/applovin/impl/sdk/d/s$a;

    if-ne p1, v0, :cond_cd

    iget-object p1, p0, Lcom/applovin/impl/sdk/d/s;->r:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getTaskCount()J

    move-result-wide v0

    iget-object p1, p0, Lcom/applovin/impl/sdk/d/s;->r:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    goto/16 :goto_c

    :cond_cd
    sget-object v0, Lcom/applovin/impl/sdk/d/s$a;->p:Lcom/applovin/impl/sdk/d/s$a;

    if-ne p1, v0, :cond_db

    iget-object p1, p0, Lcom/applovin/impl/sdk/d/s;->s:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getTaskCount()J

    move-result-wide v0

    iget-object p1, p0, Lcom/applovin/impl/sdk/d/s;->s:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    goto/16 :goto_c

    :cond_db
    sget-object v0, Lcom/applovin/impl/sdk/d/s$a;->q:Lcom/applovin/impl/sdk/d/s$a;

    if-ne p1, v0, :cond_e9

    iget-object p1, p0, Lcom/applovin/impl/sdk/d/s;->t:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getTaskCount()J

    move-result-wide v0

    iget-object p1, p0, Lcom/applovin/impl/sdk/d/s;->t:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    goto/16 :goto_c

    :cond_e9
    sget-object v0, Lcom/applovin/impl/sdk/d/s$a;->r:Lcom/applovin/impl/sdk/d/s$a;

    if-ne p1, v0, :cond_f7

    iget-object p1, p0, Lcom/applovin/impl/sdk/d/s;->u:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getTaskCount()J

    move-result-wide v0

    iget-object p1, p0, Lcom/applovin/impl/sdk/d/s;->u:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    goto/16 :goto_c

    :cond_f7
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/d/s;Lcom/applovin/impl/sdk/d/s$a;)J
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/d/s;->a(Lcom/applovin/impl/sdk/d/s$a;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/d/s;)Lcom/applovin/impl/sdk/j;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/d/s;->b:Lcom/applovin/impl/sdk/j;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/applovin/impl/sdk/d/s;->a(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .registers 5

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/applovin/impl/sdk/d/s$b;

    invoke-direct {v1, p0, p1}, Lcom/applovin/impl/sdk/d/s$b;-><init>(Lcom/applovin/impl/sdk/d/s;Ljava/lang/String;)V

    invoke-direct {v0, p2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method

.method private a(Ljava/lang/Runnable;JLjava/util/concurrent/ScheduledExecutorService;Z)V
    .registers 9

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_19

    if-eqz p5, :cond_13

    iget-object p5, p0, Lcom/applovin/impl/sdk/d/s;->b:Lcom/applovin/impl/sdk/j;

    new-instance v0, Lcom/applovin/impl/sdk/d/s$1;

    invoke-direct {v0, p0, p4, p1}, Lcom/applovin/impl/sdk/d/s$1;-><init>(Lcom/applovin/impl/sdk/d/s;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;)V

    invoke-static {p2, p3, p5, v0}, Lcom/applovin/impl/sdk/utils/d;->a(JLcom/applovin/impl/sdk/j;Ljava/lang/Runnable;)Lcom/applovin/impl/sdk/utils/d;

    goto :goto_1c

    :cond_13
    sget-object p5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p4, p1, p2, p3, p5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_1c

    :cond_19
    invoke-interface {p4, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :goto_1c
    return-void
.end method

.method private a(Lcom/applovin/impl/sdk/d/s$c;)Z
    .registers 5

    invoke-static {p1}, Lcom/applovin/impl/sdk/d/s$c;->a(Lcom/applovin/impl/sdk/d/s$c;)Lcom/applovin/impl/sdk/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/d/a;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return v1

    :cond_c
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/s;->z:Ljava/lang/Object;

    monitor-enter v0

    :try_start_f
    iget-boolean v2, p0, Lcom/applovin/impl/sdk/d/s;->A:Z

    if-eqz v2, :cond_15

    monitor-exit v0

    return v1

    :cond_15
    iget-object v1, p0, Lcom/applovin/impl/sdk/d/s;->y:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    monitor-exit v0

    return p1

    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_f .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/d/s;)Lcom/applovin/impl/sdk/q;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/d/s;->c:Lcom/applovin/impl/sdk/q;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/applovin/impl/sdk/d/a;)V
    .registers 5

    if-eqz p1, :cond_13

    :try_start_2
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/d/a;->run()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_1c

    :catch_6
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/s;->c:Lcom/applovin/impl/sdk/q;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/d/a;->e()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Task failed execution"

    invoke-virtual {v1, p1, v2, v0}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1c

    :cond_13
    iget-object p1, p0, Lcom/applovin/impl/sdk/d/s;->c:Lcom/applovin/impl/sdk/q;

    const-string v0, "TaskManager"

    const-string v1, "Attempted to execute null task immediately"

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1c
    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/s$a;)V
    .registers 5

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/applovin/impl/sdk/d/s;->a(Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/s$a;J)V

    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/s$a;J)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/applovin/impl/sdk/d/s;->a(Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/s$a;JZ)V

    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/s$a;JZ)V
    .registers 17

    move-object v6, p0

    move-object v1, p1

    move-object v0, p2

    move-wide v2, p3

    if-eqz v1, :cond_12b

    const-wide/16 v4, 0x0

    cmp-long v7, v2, v4

    if-ltz v7, :cond_114

    new-instance v4, Lcom/applovin/impl/sdk/d/s$c;

    invoke-direct {v4, p0, p1, p2}, Lcom/applovin/impl/sdk/d/s$c;-><init>(Lcom/applovin/impl/sdk/d/s;Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/s$a;)V

    invoke-direct {p0, v4}, Lcom/applovin/impl/sdk/d/s;->a(Lcom/applovin/impl/sdk/d/s$c;)Z

    move-result v5

    if-nez v5, :cond_f0

    iget-object v5, v6, Lcom/applovin/impl/sdk/d/s;->b:Lcom/applovin/impl/sdk/j;

    sget-object v7, Lcom/applovin/impl/sdk/b/b;->af:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v5, v7}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_33

    iget-object v4, v6, Lcom/applovin/impl/sdk/d/s;->x:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    :goto_2c
    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/sdk/d/s;->a(Ljava/lang/Runnable;JLjava/util/concurrent/ScheduledExecutorService;Z)V

    goto/16 :goto_113

    :cond_33
    invoke-direct {p0, p2}, Lcom/applovin/impl/sdk/d/s;->a(Lcom/applovin/impl/sdk/d/s$a;)J

    move-result-wide v7

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iget-object v5, v6, Lcom/applovin/impl/sdk/d/s;->c:Lcom/applovin/impl/sdk/q;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Scheduling "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/d/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " on "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " queue in "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms with new queue size "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "TaskManager"

    invoke-virtual {v5, v7, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/applovin/impl/sdk/d/s$a;->a:Lcom/applovin/impl/sdk/d/s$a;

    if-ne v0, v1, :cond_79

    iget-object v5, v6, Lcom/applovin/impl/sdk/d/s;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    :goto_74
    move-object v0, p0

    move-object v1, v4

    move-wide v2, p3

    move-object v4, v5

    goto :goto_2c

    :cond_79
    sget-object v1, Lcom/applovin/impl/sdk/d/s$a;->b:Lcom/applovin/impl/sdk/d/s$a;

    if-ne v0, v1, :cond_80

    iget-object v5, v6, Lcom/applovin/impl/sdk/d/s;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    goto :goto_74

    :cond_80
    sget-object v1, Lcom/applovin/impl/sdk/d/s$a;->c:Lcom/applovin/impl/sdk/d/s$a;

    if-ne v0, v1, :cond_87

    iget-object v5, v6, Lcom/applovin/impl/sdk/d/s;->f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    goto :goto_74

    :cond_87
    sget-object v1, Lcom/applovin/impl/sdk/d/s$a;->d:Lcom/applovin/impl/sdk/d/s$a;

    if-ne v0, v1, :cond_8e

    iget-object v5, v6, Lcom/applovin/impl/sdk/d/s;->g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    goto :goto_74

    :cond_8e
    sget-object v1, Lcom/applovin/impl/sdk/d/s$a;->e:Lcom/applovin/impl/sdk/d/s$a;

    if-ne v0, v1, :cond_95

    iget-object v5, v6, Lcom/applovin/impl/sdk/d/s;->h:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    goto :goto_74

    :cond_95
    sget-object v1, Lcom/applovin/impl/sdk/d/s$a;->f:Lcom/applovin/impl/sdk/d/s$a;

    if-ne v0, v1, :cond_9c

    iget-object v5, v6, Lcom/applovin/impl/sdk/d/s;->i:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    goto :goto_74

    :cond_9c
    sget-object v1, Lcom/applovin/impl/sdk/d/s$a;->g:Lcom/applovin/impl/sdk/d/s$a;

    if-ne v0, v1, :cond_a3

    iget-object v5, v6, Lcom/applovin/impl/sdk/d/s;->j:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    goto :goto_74

    :cond_a3
    sget-object v1, Lcom/applovin/impl/sdk/d/s$a;->h:Lcom/applovin/impl/sdk/d/s$a;

    if-ne v0, v1, :cond_aa

    iget-object v5, v6, Lcom/applovin/impl/sdk/d/s;->k:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    goto :goto_74

    :cond_aa
    sget-object v1, Lcom/applovin/impl/sdk/d/s$a;->i:Lcom/applovin/impl/sdk/d/s$a;

    if-ne v0, v1, :cond_b1

    iget-object v5, v6, Lcom/applovin/impl/sdk/d/s;->l:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    goto :goto_74

    :cond_b1
    sget-object v1, Lcom/applovin/impl/sdk/d/s$a;->j:Lcom/applovin/impl/sdk/d/s$a;

    if-ne v0, v1, :cond_b8

    iget-object v5, v6, Lcom/applovin/impl/sdk/d/s;->m:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    goto :goto_74

    :cond_b8
    sget-object v1, Lcom/applovin/impl/sdk/d/s$a;->k:Lcom/applovin/impl/sdk/d/s$a;

    if-ne v0, v1, :cond_bf

    iget-object v5, v6, Lcom/applovin/impl/sdk/d/s;->n:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    goto :goto_74

    :cond_bf
    sget-object v1, Lcom/applovin/impl/sdk/d/s$a;->l:Lcom/applovin/impl/sdk/d/s$a;

    if-ne v0, v1, :cond_c6

    iget-object v5, v6, Lcom/applovin/impl/sdk/d/s;->o:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    goto :goto_74

    :cond_c6
    sget-object v1, Lcom/applovin/impl/sdk/d/s$a;->m:Lcom/applovin/impl/sdk/d/s$a;

    if-ne v0, v1, :cond_cd

    iget-object v5, v6, Lcom/applovin/impl/sdk/d/s;->p:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    goto :goto_74

    :cond_cd
    sget-object v1, Lcom/applovin/impl/sdk/d/s$a;->n:Lcom/applovin/impl/sdk/d/s$a;

    if-ne v0, v1, :cond_d4

    iget-object v5, v6, Lcom/applovin/impl/sdk/d/s;->q:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    goto :goto_74

    :cond_d4
    sget-object v1, Lcom/applovin/impl/sdk/d/s$a;->o:Lcom/applovin/impl/sdk/d/s$a;

    if-ne v0, v1, :cond_db

    iget-object v5, v6, Lcom/applovin/impl/sdk/d/s;->r:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    goto :goto_74

    :cond_db
    sget-object v1, Lcom/applovin/impl/sdk/d/s$a;->p:Lcom/applovin/impl/sdk/d/s$a;

    if-ne v0, v1, :cond_e2

    iget-object v5, v6, Lcom/applovin/impl/sdk/d/s;->s:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    goto :goto_74

    :cond_e2
    sget-object v1, Lcom/applovin/impl/sdk/d/s$a;->q:Lcom/applovin/impl/sdk/d/s$a;

    if-ne v0, v1, :cond_e9

    iget-object v5, v6, Lcom/applovin/impl/sdk/d/s;->t:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    goto :goto_74

    :cond_e9
    sget-object v1, Lcom/applovin/impl/sdk/d/s$a;->r:Lcom/applovin/impl/sdk/d/s$a;

    if-ne v0, v1, :cond_113

    iget-object v5, v6, Lcom/applovin/impl/sdk/d/s;->u:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    goto :goto_74

    :cond_f0
    iget-object v0, v6, Lcom/applovin/impl/sdk/d/s;->c:Lcom/applovin/impl/sdk/q;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/d/a;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Task "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/d/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " execution delayed until after init"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_113
    :goto_113
    return-void

    :cond_114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid delay specified: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No task specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/d/s;->A:Z

    return v0
.end method

.method public b()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/s;->v:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method public c()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/s;->w:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method public d()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/s;->z:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/applovin/impl/sdk/d/s;->A:Z

    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public e()V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/s;->z:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/applovin/impl/sdk/d/s;->A:Z

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/s;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/impl/sdk/d/s$c;

    invoke-static {v2}, Lcom/applovin/impl/sdk/d/s$c;->a(Lcom/applovin/impl/sdk/d/s$c;)Lcom/applovin/impl/sdk/d/a;

    move-result-object v3

    invoke-static {v2}, Lcom/applovin/impl/sdk/d/s$c;->b(Lcom/applovin/impl/sdk/d/s$c;)Lcom/applovin/impl/sdk/d/s$a;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/applovin/impl/sdk/d/s;->a(Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/s$a;)V

    goto :goto_c

    :cond_24
    iget-object v1, p0, Lcom/applovin/impl/sdk/d/s;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0

    return-void

    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_2b

    throw v1

    return-void
.end method
