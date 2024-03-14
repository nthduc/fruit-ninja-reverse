.class Lcom/adcolony/sdk/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static e:Z = false

.field private static final f:I = 0xfa0

.field private static final g:I = 0x4

.field static final h:I = 0x3

.field static final i:I = 0x2

.field static final j:I = 0x1

.field static final k:I = 0x0

.field static final l:I = -0x1

.field static m:I = 0x3

.field static n:I = 0x1


# instance fields
.field private a:Lorg/json/JSONObject;

.field private b:Ljava/util/concurrent/ExecutorService;

.field private final c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/adcolony/sdk/e0;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {}, Lcom/adcolony/sdk/s;->b()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/w;->a:Lorg/json/JSONObject;

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/adcolony/sdk/w;->b:Ljava/util/concurrent/ExecutorService;

    .line 16
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/w;->c:Ljava/util/Queue;

    return-void
.end method

.method private a(IILjava/lang/String;Z)Ljava/lang/Runnable;
    .registers 12

    .line 4
    new-instance v6, Lcom/adcolony/sdk/w$b;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p3

    move v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/adcolony/sdk/w$b;-><init>(Lcom/adcolony/sdk/w;ILjava/lang/String;IZ)V

    return-object v6
.end method

.method static synthetic a(Lcom/adcolony/sdk/w;)Lorg/json/JSONObject;
    .registers 1

    .line 2
    iget-object p0, p0, Lcom/adcolony/sdk/w;->a:Lorg/json/JSONObject;

    return-object p0
.end method

.method private a(ILjava/lang/String;I)V
    .registers 7

    .line 23
    iget-object v0, p0, Lcom/adcolony/sdk/w;->d:Lcom/adcolony/sdk/e0;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x3

    if-ne p3, v0, :cond_1e

    .line 28
    iget-object v1, p0, Lcom/adcolony/sdk/w;->a:Lorg/json/JSONObject;

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->g(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/adcolony/sdk/w;->a(Lorg/json/JSONObject;I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 32
    iget-object p1, p0, Lcom/adcolony/sdk/w;->d:Lcom/adcolony/sdk/e0;

    invoke-virtual {p1, p2}, Lcom/adcolony/sdk/e0;->a(Ljava/lang/String;)V

    goto :goto_68

    :cond_1e
    const/4 v0, 0x2

    if-ne p3, v0, :cond_37

    .line 33
    iget-object v1, p0, Lcom/adcolony/sdk/w;->a:Lorg/json/JSONObject;

    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->g(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/adcolony/sdk/w;->a(Lorg/json/JSONObject;I)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 37
    iget-object p1, p0, Lcom/adcolony/sdk/w;->d:Lcom/adcolony/sdk/e0;

    invoke-virtual {p1, p2}, Lcom/adcolony/sdk/e0;->c(Ljava/lang/String;)V

    goto :goto_68

    :cond_37
    const/4 v0, 0x1

    if-ne p3, v0, :cond_50

    .line 38
    iget-object v1, p0, Lcom/adcolony/sdk/w;->a:Lorg/json/JSONObject;

    .line 39
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->g(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/adcolony/sdk/w;->a(Lorg/json/JSONObject;I)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 42
    iget-object p1, p0, Lcom/adcolony/sdk/w;->d:Lcom/adcolony/sdk/e0;

    invoke-virtual {p1, p2}, Lcom/adcolony/sdk/e0;->d(Ljava/lang/String;)V

    goto :goto_68

    :cond_50
    if-nez p3, :cond_68

    .line 43
    iget-object p3, p0, Lcom/adcolony/sdk/w;->a:Lorg/json/JSONObject;

    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 45
    invoke-static {p3, p1}, Lcom/adcolony/sdk/s;->g(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3}, Lcom/adcolony/sdk/w;->a(Lorg/json/JSONObject;I)Z

    move-result p1

    if-eqz p1, :cond_68

    .line 47
    iget-object p1, p0, Lcom/adcolony/sdk/w;->d:Lcom/adcolony/sdk/e0;

    invoke-virtual {p1, p2}, Lcom/adcolony/sdk/e0;->b(Ljava/lang/String;)V

    :cond_68
    :goto_68
    return-void
.end method

.method static synthetic a(Lcom/adcolony/sdk/w;ILjava/lang/String;I)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/adcolony/sdk/w;->a(ILjava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)Z
    .registers 3

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/w;->b:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/adcolony/sdk/w;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/adcolony/sdk/w;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_22

    .line 54
    iget-object v0, p0, Lcom/adcolony/sdk/w;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_19
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_19} :catch_1b

    const/4 p1, 0x1

    return p1

    :catch_1b
    const-string p1, "ADCLogError"

    const-string v0, "Internal error when submitting log to executor service."

    .line 58
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method a()Lcom/adcolony/sdk/e0;
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/adcolony/sdk/w;->d:Lcom/adcolony/sdk/e0;

    return-object v0
.end method

.method a(Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .registers 6

    .line 48
    invoke-static {}, Lcom/adcolony/sdk/s;->b()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    .line 49
    :goto_5
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 50
    invoke-static {p1, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "id"

    .line 51
    invoke-static {v2, v3}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v3

    .line 52
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1f
    return-object v0
.end method

.method a(ILjava/lang/String;Z)V
    .registers 5

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/adcolony/sdk/w;->b(IILjava/lang/String;Z)V

    return-void
.end method

.method a(Ljava/util/HashMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 17
    :try_start_0
    new-instance v0, Lcom/adcolony/sdk/e0;

    new-instance v1, Lcom/adcolony/sdk/t;

    new-instance v2, Ljava/net/URL;

    const-string v3, "https://wd.adcolony.com/logs"

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/adcolony/sdk/t;-><init>(Ljava/net/URL;)V

    .line 19
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/adcolony/sdk/e0;-><init>(Lcom/adcolony/sdk/t;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/HashMap;)V

    iput-object v0, p0, Lcom/adcolony/sdk/w;->d:Lcom/adcolony/sdk/e0;

    const-wide/16 v1, 0x5

    .line 20
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Lcom/adcolony/sdk/e0;->a(JLjava/util/concurrent/TimeUnit;)V
    :try_end_1e
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_1e} :catch_1f

    goto :goto_23

    :catch_1f
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V

    :goto_23
    return-void
.end method

.method a(Lorg/json/JSONObject;I)Z
    .registers 4

    const-string v0, "send_level"

    .line 12
    invoke-static {p1, v0}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 15
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-nez p1, :cond_e

    .line 16
    sget v0, Lcom/adcolony/sdk/w;->n:I

    :cond_e
    if-lt v0, p2, :cond_15

    const/4 p1, 0x4

    if-eq v0, p1, :cond_15

    const/4 p1, 0x1

    return p1

    :cond_15
    const/4 p1, 0x0

    return p1
.end method

.method a(Lorg/json/JSONObject;IZ)Z
    .registers 6

    const-string v0, "print_level"

    .line 5
    invoke-static {p1, v0}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    const-string v1, "log_private"

    .line 6
    invoke-static {p1, v1}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    .line 9
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-nez p1, :cond_16

    .line 10
    sget v0, Lcom/adcolony/sdk/w;->m:I

    .line 11
    sget-boolean v1, Lcom/adcolony/sdk/w;->e:Z

    :cond_16
    const/4 p1, 0x0

    if-eqz p3, :cond_1b

    if-eqz v1, :cond_1e

    :cond_1b
    const/4 p3, 0x4

    if-ne v0, p3, :cond_1f

    :cond_1e
    return p1

    :cond_1f
    if-lt v0, p2, :cond_22

    const/4 p1, 0x1

    :cond_22
    return p1
.end method

.method b()V
    .registers 3

    .line 7
    new-instance v0, Lcom/adcolony/sdk/w$c;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/w$c;-><init>(Lcom/adcolony/sdk/w;)V

    const-string v1, "Log.set_log_level"

    invoke-static {v1, v0}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/z;)V

    .line 13
    new-instance v0, Lcom/adcolony/sdk/w$d;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/w$d;-><init>(Lcom/adcolony/sdk/w;)V

    const-string v1, "Log.public.trace"

    invoke-static {v1, v0}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/z;)V

    .line 20
    new-instance v0, Lcom/adcolony/sdk/w$e;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/w$e;-><init>(Lcom/adcolony/sdk/w;)V

    const-string v1, "Log.private.trace"

    invoke-static {v1, v0}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/z;)V

    .line 27
    new-instance v0, Lcom/adcolony/sdk/w$f;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/w$f;-><init>(Lcom/adcolony/sdk/w;)V

    const-string v1, "Log.public.info"

    invoke-static {v1, v0}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/z;)V

    .line 34
    new-instance v0, Lcom/adcolony/sdk/w$g;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/w$g;-><init>(Lcom/adcolony/sdk/w;)V

    const-string v1, "Log.private.info"

    invoke-static {v1, v0}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/z;)V

    .line 41
    new-instance v0, Lcom/adcolony/sdk/w$h;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/w$h;-><init>(Lcom/adcolony/sdk/w;)V

    const-string v1, "Log.public.warning"

    invoke-static {v1, v0}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/z;)V

    .line 48
    new-instance v0, Lcom/adcolony/sdk/w$i;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/w$i;-><init>(Lcom/adcolony/sdk/w;)V

    const-string v1, "Log.private.warning"

    invoke-static {v1, v0}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/z;)V

    .line 55
    new-instance v0, Lcom/adcolony/sdk/w$j;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/w$j;-><init>(Lcom/adcolony/sdk/w;)V

    const-string v1, "Log.public.error"

    invoke-static {v1, v0}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/z;)V

    .line 62
    new-instance v0, Lcom/adcolony/sdk/w$a;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/w$a;-><init>(Lcom/adcolony/sdk/w;)V

    const-string v1, "Log.private.error"

    invoke-static {v1, v0}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/z;)V

    return-void
.end method

.method b(IILjava/lang/String;Z)V
    .registers 7

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/adcolony/sdk/w;->a(IILjava/lang/String;Z)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adcolony/sdk/w;->a(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 4
    iget-object v0, p0, Lcom/adcolony/sdk/w;->c:Ljava/util/Queue;

    monitor-enter v0

    .line 5
    :try_start_d
    iget-object v1, p0, Lcom/adcolony/sdk/w;->c:Ljava/util/Queue;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/adcolony/sdk/w;->a(IILjava/lang/String;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 6
    monitor-exit v0

    goto :goto_1b

    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_18

    throw p1

    :cond_1b
    :goto_1b
    return-void
.end method

.method b(Lorg/json/JSONArray;)V
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/w;->a(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/adcolony/sdk/w;->a:Lorg/json/JSONObject;

    return-void
.end method

.method c()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/w;->b:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_12

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/adcolony/sdk/w;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2
    :cond_12
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/w;->b:Ljava/util/concurrent/ExecutorService;

    .line 6
    :cond_18
    iget-object v0, p0, Lcom/adcolony/sdk/w;->c:Ljava/util/Queue;

    monitor-enter v0

    .line 7
    :goto_1b
    :try_start_1b
    iget-object v1, p0, Lcom/adcolony/sdk/w;->c:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 8
    iget-object v1, p0, Lcom/adcolony/sdk/w;->c:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 9
    invoke-direct {p0, v1}, Lcom/adcolony/sdk/w;->a(Ljava/lang/Runnable;)Z

    goto :goto_1b

    .line 11
    :cond_2f
    monitor-exit v0

    return-void

    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_1b .. :try_end_33} :catchall_31

    throw v1

    return-void
.end method
