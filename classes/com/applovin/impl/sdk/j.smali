.class public Lcom/applovin/impl/sdk/j;
.super Ljava/lang/Object;


# static fields
.field protected static a:Landroid/content/Context;


# instance fields
.field private A:Lcom/applovin/impl/sdk/w;

.field private B:Lcom/applovin/impl/sdk/a;

.field private C:Lcom/applovin/impl/sdk/p;

.field private D:Lcom/applovin/impl/sdk/v;

.field private E:Lcom/applovin/impl/sdk/network/c;

.field private F:Lcom/applovin/impl/sdk/f;

.field private G:Lcom/applovin/impl/sdk/utils/n;

.field private H:Lcom/applovin/impl/sdk/e;

.field private I:Lcom/applovin/impl/sdk/l;

.field private J:Lcom/applovin/impl/sdk/network/PostbackServiceImpl;

.field private K:Lcom/applovin/impl/sdk/network/e;

.field private L:Lcom/applovin/impl/mediation/i;

.field private M:Lcom/applovin/impl/mediation/h;

.field private N:Lcom/applovin/impl/mediation/MediationServiceImpl;

.field private O:Lcom/applovin/impl/mediation/k;

.field private P:Lcom/applovin/impl/mediation/debugger/a;

.field private Q:Lcom/applovin/impl/sdk/r;

.field private R:Lcom/applovin/impl/mediation/g;

.field private S:Lcom/applovin/impl/mediation/debugger/ui/testmode/b;

.field private final T:Ljava/lang/Object;

.field private final U:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private V:Z

.field private W:Z

.field private X:Z

.field private Y:Z

.field private Z:Z

.field private aa:Z

.field private ab:Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;

.field private ac:Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;

.field private ad:Lcom/applovin/sdk/AppLovinSdkConfiguration;

.field protected b:Lcom/applovin/impl/sdk/b/c;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private e:J

.field private f:Lcom/applovin/sdk/AppLovinSdkSettings;

.field private g:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

.field private h:Lcom/applovin/impl/sdk/NativeAdServiceImpl;

.field private i:Lcom/applovin/impl/sdk/EventServiceImpl;

.field private j:Lcom/applovin/impl/sdk/UserServiceImpl;

.field private k:Lcom/applovin/impl/sdk/VariableServiceImpl;

.field private l:Lcom/applovin/sdk/AppLovinSdk;

.field private m:Lcom/applovin/impl/sdk/q;

.field private n:Lcom/applovin/impl/sdk/d/s;

.field private o:Lcom/applovin/impl/sdk/network/a;

.field private p:Lcom/applovin/impl/sdk/c/h;

.field private q:Lcom/applovin/impl/sdk/k;

.field private r:Lcom/applovin/impl/sdk/b/e;

.field private s:Lcom/applovin/impl/sdk/c/f;

.field private t:Lcom/applovin/impl/sdk/i;

.field private u:Lcom/applovin/impl/sdk/utils/q;

.field private v:Lcom/applovin/impl/sdk/c;

.field private w:Lcom/applovin/impl/sdk/s;

.field private x:Lcom/applovin/impl/sdk/o;

.field private y:Lcom/applovin/impl/sdk/ad/e;

.field private z:Lcom/applovin/impl/sdk/c/c;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->T:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->U:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/j;->V:Z

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/j;->W:Z

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/j;->X:Z

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/j;->Y:Z

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/j;->Z:Z

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/j;->aa:Z

    return-void
.end method

.method public static G()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/applovin/impl/sdk/j;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/d/s;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/j;->n:Lcom/applovin/impl/sdk/d/s;

    return-object p0
.end method

.method private aj()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->E:Lcom/applovin/impl/sdk/network/c;

    new-instance v1, Lcom/applovin/impl/sdk/j$3;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/j$3;-><init>(Lcom/applovin/impl/sdk/j;)V

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/c;->a(Lcom/applovin/impl/sdk/network/c$a;)V

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/q;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/j;->m:Lcom/applovin/impl/sdk/q;

    return-object p0
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/j;)Lcom/applovin/sdk/AppLovinSdkConfiguration;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/j;->ad:Lcom/applovin/sdk/AppLovinSdkConfiguration;

    return-object p0
.end method

.method static synthetic d(Lcom/applovin/impl/sdk/j;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/j;->T:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic e(Lcom/applovin/impl/sdk/j;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/applovin/impl/sdk/j;->W:Z

    return p0
.end method

.method static synthetic f(Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/network/c;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/j;->E:Lcom/applovin/impl/sdk/network/c;

    return-object p0
.end method


# virtual methods
.method public A()Lcom/applovin/impl/mediation/debugger/a;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->P:Lcom/applovin/impl/mediation/debugger/a;

    return-object v0
.end method

.method public B()Lcom/applovin/impl/mediation/k;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->O:Lcom/applovin/impl/mediation/k;

    return-object v0
.end method

.method public C()Lcom/applovin/impl/mediation/g;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->R:Lcom/applovin/impl/mediation/g;

    return-object v0
.end method

.method public D()Lcom/applovin/impl/mediation/debugger/ui/testmode/b;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->S:Lcom/applovin/impl/mediation/debugger/ui/testmode/b;

    return-object v0
.end method

.method public E()Lcom/applovin/impl/sdk/b/c;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->b:Lcom/applovin/impl/sdk/b/c;

    return-object v0
.end method

.method public F()Landroid/content/Context;
    .registers 2

    sget-object v0, Lcom/applovin/impl/sdk/j;->a:Landroid/content/Context;

    return-object v0
.end method

.method public H()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public I()J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/impl/sdk/j;->e:J

    return-wide v0
.end method

.method public J()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/j;->Z:Z

    return v0
.end method

.method public K()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/j;->aa:Z

    return v0
.end method

.method public L()Lcom/applovin/impl/sdk/network/a;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->o:Lcom/applovin/impl/sdk/network/a;

    return-object v0
.end method

.method public M()Lcom/applovin/impl/sdk/d/s;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->n:Lcom/applovin/impl/sdk/d/s;

    return-object v0
.end method

.method public N()Lcom/applovin/impl/sdk/c/h;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->p:Lcom/applovin/impl/sdk/c/h;

    return-object v0
.end method

.method public O()Lcom/applovin/impl/sdk/network/e;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->K:Lcom/applovin/impl/sdk/network/e;

    return-object v0
.end method

.method public P()Lcom/applovin/impl/sdk/k;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->q:Lcom/applovin/impl/sdk/k;

    return-object v0
.end method

.method public Q()Lcom/applovin/impl/sdk/c/f;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->s:Lcom/applovin/impl/sdk/c/f;

    return-object v0
.end method

.method public R()Lcom/applovin/impl/sdk/i;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->t:Lcom/applovin/impl/sdk/i;

    return-object v0
.end method

.method public S()Lcom/applovin/impl/sdk/network/PostbackServiceImpl;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->J:Lcom/applovin/impl/sdk/network/PostbackServiceImpl;

    return-object v0
.end method

.method public T()Lcom/applovin/sdk/AppLovinSdk;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->l:Lcom/applovin/sdk/AppLovinSdk;

    return-object v0
.end method

.method public U()Lcom/applovin/impl/sdk/c;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->v:Lcom/applovin/impl/sdk/c;

    return-object v0
.end method

.method public V()Lcom/applovin/impl/sdk/s;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->w:Lcom/applovin/impl/sdk/s;

    return-object v0
.end method

.method public W()Lcom/applovin/impl/sdk/o;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->x:Lcom/applovin/impl/sdk/o;

    return-object v0
.end method

.method public X()Lcom/applovin/impl/sdk/ad/e;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->y:Lcom/applovin/impl/sdk/ad/e;

    return-object v0
.end method

.method public Y()Lcom/applovin/impl/sdk/c/c;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->z:Lcom/applovin/impl/sdk/c/c;

    return-object v0
.end method

.method public Z()Lcom/applovin/impl/sdk/w;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->A:Lcom/applovin/impl/sdk/w;

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/applovin/impl/sdk/b/b;)Lcom/applovin/impl/sdk/b/b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ST:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/applovin/impl/sdk/b/b<",
            "TST;>;)",
            "Lcom/applovin/impl/sdk/b/b<",
            "TST;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->b:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/impl/sdk/b/c;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/b/b;)Lcom/applovin/impl/sdk/b/b;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/applovin/impl/sdk/b/b<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->b:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/b/c;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/applovin/impl/sdk/b/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/applovin/impl/sdk/b/d<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/sdk/j;->b(Lcom/applovin/impl/sdk/b/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Landroid/content/SharedPreferences;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/Class;",
            "Landroid/content/SharedPreferences;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->r:Lcom/applovin/impl/sdk/b/e;

    invoke-static {p1, p2, p3, p4}, Lcom/applovin/impl/sdk/b/e;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->T:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/applovin/impl/sdk/j;->W:Z

    if-nez v1, :cond_e

    iget-boolean v1, p0, Lcom/applovin/impl/sdk/j;->X:Z

    if-nez v1, :cond_e

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/j;->b()V

    :cond_e
    monitor-exit v0

    return-void

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public a(J)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->t:Lcom/applovin/impl/sdk/i;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/impl/sdk/i;->a(J)V

    return-void
.end method

.method public a(Landroid/content/SharedPreferences;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->r:Lcom/applovin/impl/sdk/b/e;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/b/e;->a(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public a(Lcom/applovin/impl/mediation/a/e;)V
    .registers 4

    iget-object p1, p0, Lcom/applovin/impl/sdk/j;->n:Lcom/applovin/impl/sdk/d/s;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/d/s;->a()Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    :cond_9
    sget-object p1, Lcom/applovin/impl/sdk/b/a;->a:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/j;->b(Lcom/applovin/impl/sdk/b/b;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_32

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->M:Lcom/applovin/impl/mediation/h;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/h;->c()Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_32

    iget-object p1, p0, Lcom/applovin/impl/sdk/j;->m:Lcom/applovin/impl/sdk/q;

    const-string v0, "AppLovinSdk"

    const-string v1, "All required adapters initialized"

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/j;->n:Lcom/applovin/impl/sdk/d/s;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/d/s;->e()V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/j;->f()V

    :cond_32
    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/b/d;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/applovin/impl/sdk/b/d<",
            "TT;>;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->r:Lcom/applovin/impl/sdk/b/e;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/impl/sdk/b/e;->a(Lcom/applovin/impl/sdk/b/d;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/b/d;Ljava/lang/Object;Landroid/content/SharedPreferences;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/applovin/impl/sdk/b/d<",
            "TT;>;TT;",
            "Landroid/content/SharedPreferences;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->r:Lcom/applovin/impl/sdk/b/e;

    invoke-virtual {v0, p1, p2, p3}, Lcom/applovin/impl/sdk/b/e;->a(Lcom/applovin/impl/sdk/b/d;Ljava/lang/Object;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public a(Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;)V
    .registers 3

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/j;->d()Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz p1, :cond_10

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->ad:Lcom/applovin/sdk/AppLovinSdkConfiguration;

    invoke-interface {p1, v0}, Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;->onSdkInitialized(Lcom/applovin/sdk/AppLovinSdkConfiguration;)V

    goto :goto_10

    :cond_e
    iput-object p1, p0, Lcom/applovin/impl/sdk/j;->ab:Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;

    :cond_10
    :goto_10
    return-void
.end method

.method public a(Lcom/applovin/sdk/AppLovinSdk;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/j;->l:Lcom/applovin/sdk/AppLovinSdk;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting plugin version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppLovinSdk"

    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/q;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->b:Lcom/applovin/impl/sdk/b/c;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->dM:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/b/c;->a(Lcom/applovin/impl/sdk/b/b;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/j;->b:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/b/c;->a()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;Landroid/content/SharedPreferences$Editor;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Landroid/content/SharedPreferences$Editor;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->r:Lcom/applovin/impl/sdk/b/e;

    invoke-virtual {v0, p1, p2, p3}, Lcom/applovin/impl/sdk/b/e;->a(Ljava/lang/String;Ljava/lang/Object;Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public a(Z)V
    .registers 9

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->T:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/applovin/impl/sdk/j;->W:Z

    iput-boolean p1, p0, Lcom/applovin/impl/sdk/j;->X:Z

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_6c

    iget-object p1, p0, Lcom/applovin/impl/sdk/j;->b:Lcom/applovin/impl/sdk/b/c;

    if-eqz p1, :cond_6b

    iget-object p1, p0, Lcom/applovin/impl/sdk/j;->n:Lcom/applovin/impl/sdk/d/s;

    if-nez p1, :cond_12

    goto :goto_6b

    :cond_12
    sget-object p1, Lcom/applovin/impl/sdk/b/a;->a:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/j;->b(Lcom/applovin/impl/sdk/b/b;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object p1, p0, Lcom/applovin/impl/sdk/j;->n:Lcom/applovin/impl/sdk/d/s;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/d/s;->e()V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/j;->f()V

    goto :goto_6b

    :cond_27
    sget-object v0, Lcom/applovin/impl/sdk/b/a;->b:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    new-instance v2, Lcom/applovin/impl/sdk/d/ad;

    const/4 v0, 0x1

    new-instance v1, Lcom/applovin/impl/sdk/j$1;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/j$1;-><init>(Lcom/applovin/impl/sdk/j;)V

    invoke-direct {v2, p0, v0, v1}, Lcom/applovin/impl/sdk/d/ad;-><init>(Lcom/applovin/impl/sdk/j;ZLjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->m:Lcom/applovin/impl/sdk/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Waiting for required adapters to init: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " - timing out in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms..."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AppLovinSdk"

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/j;->n:Lcom/applovin/impl/sdk/d/s;

    sget-object v3, Lcom/applovin/impl/sdk/d/s$a;->k:Lcom/applovin/impl/sdk/d/s$a;

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/applovin/impl/sdk/d/s;->a(Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/s$a;JZ)V

    :cond_6b
    :goto_6b
    return-void

    :catchall_6c
    move-exception p1

    :try_start_6d
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw p1
.end method

.method public a(ZLjava/lang/String;Lcom/applovin/sdk/AppLovinSdkSettings;Landroid/content/Context;)V
    .registers 9

    iput-object p2, p0, Lcom/applovin/impl/sdk/j;->c:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/sdk/j;->e:J

    iput-object p3, p0, Lcom/applovin/impl/sdk/j;->f:Lcom/applovin/sdk/AppLovinSdkSettings;

    new-instance p1, Lcom/applovin/impl/sdk/SdkConfigurationImpl;

    invoke-direct {p1, p0}, Lcom/applovin/impl/sdk/SdkConfigurationImpl;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object p1, p0, Lcom/applovin/impl/sdk/j;->ad:Lcom/applovin/sdk/AppLovinSdkConfiguration;

    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/applovin/impl/sdk/j;->a:Landroid/content/Context;

    instance-of p1, p4, Landroid/app/Activity;

    if-eqz p1, :cond_25

    new-instance p1, Ljava/lang/ref/WeakReference;

    move-object v0, p4

    check-cast v0, Landroid/app/Activity;

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/applovin/impl/sdk/j;->d:Ljava/lang/ref/WeakReference;

    :cond_25
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object p1

    new-instance v0, Lcom/applovin/impl/sdk/q;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/q;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->m:Lcom/applovin/impl/sdk/q;

    new-instance v0, Lcom/applovin/impl/sdk/b/e;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/b/e;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->r:Lcom/applovin/impl/sdk/b/e;

    new-instance v0, Lcom/applovin/impl/sdk/b/c;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/b/c;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->b:Lcom/applovin/impl/sdk/b/c;

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->b:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/b/c;->b()V

    new-instance v0, Lcom/applovin/impl/sdk/c/f;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/c/f;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->s:Lcom/applovin/impl/sdk/c/f;

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->s:Lcom/applovin/impl/sdk/c/f;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/c/f;->b()V

    new-instance v0, Lcom/applovin/impl/sdk/o;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/o;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->x:Lcom/applovin/impl/sdk/o;

    new-instance v0, Lcom/applovin/impl/sdk/c;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/c;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->v:Lcom/applovin/impl/sdk/c;

    new-instance v0, Lcom/applovin/impl/sdk/s;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/s;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->w:Lcom/applovin/impl/sdk/s;

    new-instance v0, Lcom/applovin/impl/sdk/ad/e;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/ad/e;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->y:Lcom/applovin/impl/sdk/ad/e;

    new-instance v0, Lcom/applovin/impl/sdk/EventServiceImpl;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/EventServiceImpl;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->i:Lcom/applovin/impl/sdk/EventServiceImpl;

    new-instance v0, Lcom/applovin/impl/sdk/UserServiceImpl;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/UserServiceImpl;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->j:Lcom/applovin/impl/sdk/UserServiceImpl;

    new-instance v0, Lcom/applovin/impl/sdk/VariableServiceImpl;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/VariableServiceImpl;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->k:Lcom/applovin/impl/sdk/VariableServiceImpl;

    new-instance v0, Lcom/applovin/impl/sdk/c/c;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/c/c;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->z:Lcom/applovin/impl/sdk/c/c;

    new-instance v0, Lcom/applovin/impl/sdk/d/s;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/d/s;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->n:Lcom/applovin/impl/sdk/d/s;

    new-instance v0, Lcom/applovin/impl/sdk/network/a;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/network/a;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->o:Lcom/applovin/impl/sdk/network/a;

    new-instance v0, Lcom/applovin/impl/sdk/c/h;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/c/h;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->p:Lcom/applovin/impl/sdk/c/h;

    new-instance v0, Lcom/applovin/impl/sdk/k;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/k;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->q:Lcom/applovin/impl/sdk/k;

    new-instance v0, Lcom/applovin/impl/sdk/a;

    invoke-direct {v0, p4}, Lcom/applovin/impl/sdk/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->B:Lcom/applovin/impl/sdk/a;

    new-instance v0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->g:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    new-instance v0, Lcom/applovin/impl/sdk/NativeAdServiceImpl;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/NativeAdServiceImpl;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->h:Lcom/applovin/impl/sdk/NativeAdServiceImpl;

    new-instance v0, Lcom/applovin/impl/sdk/w;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/w;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->A:Lcom/applovin/impl/sdk/w;

    new-instance v0, Lcom/applovin/impl/sdk/p;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/p;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->C:Lcom/applovin/impl/sdk/p;

    new-instance v0, Lcom/applovin/impl/sdk/network/PostbackServiceImpl;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/network/PostbackServiceImpl;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->J:Lcom/applovin/impl/sdk/network/PostbackServiceImpl;

    new-instance v0, Lcom/applovin/impl/sdk/network/e;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/network/e;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->K:Lcom/applovin/impl/sdk/network/e;

    new-instance v0, Lcom/applovin/impl/mediation/i;

    invoke-direct {v0, p0}, Lcom/applovin/impl/mediation/i;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->L:Lcom/applovin/impl/mediation/i;

    new-instance v0, Lcom/applovin/impl/mediation/h;

    invoke-direct {v0, p0}, Lcom/applovin/impl/mediation/h;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->M:Lcom/applovin/impl/mediation/h;

    new-instance v0, Lcom/applovin/impl/mediation/MediationServiceImpl;

    invoke-direct {v0, p0}, Lcom/applovin/impl/mediation/MediationServiceImpl;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->N:Lcom/applovin/impl/mediation/MediationServiceImpl;

    new-instance v0, Lcom/applovin/impl/sdk/r;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/r;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->Q:Lcom/applovin/impl/sdk/r;

    new-instance v0, Lcom/applovin/impl/mediation/debugger/a;

    invoke-direct {v0, p0}, Lcom/applovin/impl/mediation/debugger/a;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->P:Lcom/applovin/impl/mediation/debugger/a;

    new-instance v0, Lcom/applovin/impl/mediation/k;

    invoke-direct {v0}, Lcom/applovin/impl/mediation/k;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->O:Lcom/applovin/impl/mediation/k;

    new-instance v0, Lcom/applovin/impl/mediation/g;

    invoke-direct {v0, p0}, Lcom/applovin/impl/mediation/g;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->R:Lcom/applovin/impl/mediation/g;

    new-instance v0, Lcom/applovin/impl/sdk/i;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/i;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->t:Lcom/applovin/impl/sdk/i;

    new-instance v0, Lcom/applovin/impl/sdk/utils/q;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/utils/q;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->u:Lcom/applovin/impl/sdk/utils/q;

    new-instance v0, Lcom/applovin/impl/sdk/v;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/v;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->D:Lcom/applovin/impl/sdk/v;

    new-instance v0, Lcom/applovin/impl/sdk/utils/n;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/utils/n;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->G:Lcom/applovin/impl/sdk/utils/n;

    new-instance v0, Lcom/applovin/impl/sdk/e;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/e;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->H:Lcom/applovin/impl/sdk/e;

    new-instance v0, Lcom/applovin/impl/sdk/l;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/l;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->I:Lcom/applovin/impl/sdk/l;

    new-instance v0, Lcom/applovin/impl/mediation/debugger/ui/testmode/b;

    invoke-direct {v0, p0}, Lcom/applovin/impl/mediation/debugger/ui/testmode/b;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->S:Lcom/applovin/impl/mediation/debugger/ui/testmode/b;

    new-instance v0, Lcom/applovin/impl/sdk/f;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/f;-><init>(Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->F:Lcom/applovin/impl/sdk/f;

    sget-object v0, Lcom/applovin/impl/sdk/b/b;->ag:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_159

    invoke-static {}, Lcom/applovin/impl/sdk/AppLovinExceptionHandler;->shared()Lcom/applovin/impl/sdk/AppLovinExceptionHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/applovin/impl/sdk/AppLovinExceptionHandler;->addSdk(Lcom/applovin/impl/sdk/j;)V

    invoke-static {}, Lcom/applovin/impl/sdk/AppLovinExceptionHandler;->shared()Lcom/applovin/impl/sdk/AppLovinExceptionHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinExceptionHandler;->enable()V

    :cond_159
    sget-object v0, Lcom/applovin/impl/sdk/b/b;->du:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_16e

    new-instance v0, Lcom/applovin/impl/sdk/network/c;

    invoke-direct {v0, p4}, Lcom/applovin/impl/sdk/network/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->E:Lcom/applovin/impl/sdk/network/c;

    :cond_16e
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v0, "AppLovinSdk"

    const/4 v1, 0x1

    if-eqz p2, :cond_1aa

    iput-boolean v1, p0, Lcom/applovin/impl/sdk/j;->Y:Z

    const-string p2, "Unable to find AppLovin SDK key. Please add  meta-data android:name=\"applovin.sdk.key\" android:value=\"YOUR_SDK_KEY_HERE\" into AndroidManifest.xml."

    invoke-static {v0, p2}, Lcom/applovin/impl/sdk/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/io/StringWriter;

    invoke-direct {p2}, Ljava/io/StringWriter;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called with an invalid SDK key from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/applovin/impl/sdk/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1aa
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/j;->u()Z

    move-result p2

    const/4 v2, 0x0

    if-nez p2, :cond_268

    invoke-static {p4}, Lcom/applovin/impl/sdk/utils/r;->a(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1ba

    invoke-virtual {p3, v1}, Lcom/applovin/sdk/AppLovinSdkSettings;->setVerboseLogging(Z)V

    :cond_1ba
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/j;->E()Lcom/applovin/impl/sdk/b/c;

    move-result-object p2

    sget-object v3, Lcom/applovin/impl/sdk/b/b;->T:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p3}, Lcom/applovin/sdk/AppLovinSdkSettings;->isVerboseLoggingEnabled()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p2, v3, p3}, Lcom/applovin/impl/sdk/b/c;->a(Lcom/applovin/impl/sdk/b/b;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/j;->E()Lcom/applovin/impl/sdk/b/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/b/c;->a()V

    const-class p2, Lcom/applovin/impl/adview/c;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    invoke-static {p4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    iget-object p3, p0, Lcom/applovin/impl/sdk/j;->r:Lcom/applovin/impl/sdk/b/e;

    sget-object p4, Lcom/applovin/impl/sdk/b/d;->a:Lcom/applovin/impl/sdk/b/d;

    const/4 v3, 0x0

    invoke-virtual {p3, p4, v3, p2}, Lcom/applovin/impl/sdk/b/e;->b(Lcom/applovin/impl/sdk/b/d;Ljava/lang/Object;Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1f7

    iput-boolean v1, p0, Lcom/applovin/impl/sdk/j;->Z:Z

    iget-object p3, p0, Lcom/applovin/impl/sdk/j;->r:Lcom/applovin/impl/sdk/b/e;

    sget-object p4, Lcom/applovin/impl/sdk/b/d;->a:Lcom/applovin/impl/sdk/b/d;

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_1ff

    :cond_1f7
    iget-object p3, p0, Lcom/applovin/impl/sdk/j;->r:Lcom/applovin/impl/sdk/b/e;

    sget-object p4, Lcom/applovin/impl/sdk/b/d;->a:Lcom/applovin/impl/sdk/b/d;

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    :goto_1ff
    invoke-virtual {p3, p4, v3, p2}, Lcom/applovin/impl/sdk/b/e;->a(Lcom/applovin/impl/sdk/b/d;Ljava/lang/Object;Landroid/content/SharedPreferences;)V

    iget-object p2, p0, Lcom/applovin/impl/sdk/j;->r:Lcom/applovin/impl/sdk/b/e;

    sget-object p3, Lcom/applovin/impl/sdk/b/d;->b:Lcom/applovin/impl/sdk/b/d;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/applovin/impl/sdk/b/e;->b(Lcom/applovin/impl/sdk/b/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_220

    iget-object p2, p0, Lcom/applovin/impl/sdk/j;->m:Lcom/applovin/impl/sdk/q;

    const-string p3, "Initializing SDK for non-maiden launch"

    invoke-virtual {p2, v0, p3}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/applovin/impl/sdk/j;->aa:Z

    goto :goto_232

    :cond_220
    iget-object p2, p0, Lcom/applovin/impl/sdk/j;->m:Lcom/applovin/impl/sdk/q;

    const-string p3, "Initializing SDK for maiden launch"

    invoke-virtual {p2, v0, p3}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/applovin/impl/sdk/j;->r:Lcom/applovin/impl/sdk/b/e;

    sget-object p3, Lcom/applovin/impl/sdk/b/d;->b:Lcom/applovin/impl/sdk/b/d;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/applovin/impl/sdk/b/e;->a(Lcom/applovin/impl/sdk/b/d;Ljava/lang/Object;)V

    :goto_232
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/j;->F()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/applovin/impl/sdk/utils/h;->a(Landroid/content/Context;)Z

    move-result p2

    sget-object p3, Lcom/applovin/impl/sdk/b/b;->dv:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p0, p3}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_24a

    if-eqz p2, :cond_24d

    :cond_24a
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/j;->b()V

    :cond_24d
    sget-object p3, Lcom/applovin/impl/sdk/b/b;->du:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p0, p3}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_26b

    if-nez p2, :cond_26b

    iget-object p2, p0, Lcom/applovin/impl/sdk/j;->m:Lcom/applovin/impl/sdk/q;

    const-string p3, "SDK initialized with no internet connection - listening for connection"

    invoke-virtual {p2, v0, p3}, Lcom/applovin/impl/sdk/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/j;->aj()V

    goto :goto_26b

    :cond_268
    invoke-virtual {p0, v2}, Lcom/applovin/impl/sdk/j;->a(Z)V

    :cond_26b
    :goto_26b
    invoke-static {p1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void
.end method

.method public aa()Lcom/applovin/impl/sdk/p;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->C:Lcom/applovin/impl/sdk/p;

    return-object v0
.end method

.method public ab()Lcom/applovin/impl/sdk/a;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->B:Lcom/applovin/impl/sdk/a;

    return-object v0
.end method

.method public ac()Lcom/applovin/impl/sdk/v;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->D:Lcom/applovin/impl/sdk/v;

    return-object v0
.end method

.method public ad()Lcom/applovin/impl/sdk/f;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->F:Lcom/applovin/impl/sdk/f;

    return-object v0
.end method

.method public ae()Lcom/applovin/impl/sdk/utils/n;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->G:Lcom/applovin/impl/sdk/utils/n;

    return-object v0
.end method

.method public af()Lcom/applovin/impl/sdk/e;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->H:Lcom/applovin/impl/sdk/e;

    return-object v0
.end method

.method public ag()Lcom/applovin/impl/sdk/AppLovinBroadcastManager;
    .registers 2

    sget-object v0, Lcom/applovin/impl/sdk/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->getInstance(Landroid/content/Context;)Lcom/applovin/impl/sdk/AppLovinBroadcastManager;

    move-result-object v0

    return-object v0
.end method

.method public ah()Lcom/applovin/impl/sdk/l;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->I:Lcom/applovin/impl/sdk/l;

    return-object v0
.end method

.method public ai()Landroid/app/Activity;
    .registers 2

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/j;->H()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/j;->ab()Lcom/applovin/impl/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/a;->a()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_12

    return-object v0

    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Lcom/applovin/impl/sdk/b/d;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/applovin/impl/sdk/b/d<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->r:Lcom/applovin/impl/sdk/b/e;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/impl/sdk/b/e;->b(Lcom/applovin/impl/sdk/b/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/applovin/impl/sdk/b/d;Ljava/lang/Object;Landroid/content/SharedPreferences;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/applovin/impl/sdk/b/d<",
            "TT;>;TT;",
            "Landroid/content/SharedPreferences;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->r:Lcom/applovin/impl/sdk/b/e;

    invoke-virtual {v0, p1, p2, p3}, Lcom/applovin/impl/sdk/b/e;->b(Lcom/applovin/impl/sdk/b/d;Ljava/lang/Object;Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/applovin/impl/sdk/b/b;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/sdk/b/b<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->b:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/b/c;->b(Lcom/applovin/impl/sdk/b/b;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->T:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/applovin/impl/sdk/j;->V:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    invoke-virtual {p0, v2}, Lcom/applovin/impl/sdk/j;->a(Z)V

    goto :goto_23

    :cond_c
    iput-boolean v2, p0, Lcom/applovin/impl/sdk/j;->W:Z

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/j;->M()Lcom/applovin/impl/sdk/d/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/d/s;->d()V

    new-instance v1, Lcom/applovin/impl/sdk/d/k;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/d/k;-><init>(Lcom/applovin/impl/sdk/j;)V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/j;->M()Lcom/applovin/impl/sdk/d/s;

    move-result-object v2

    sget-object v3, Lcom/applovin/impl/sdk/d/s$a;->a:Lcom/applovin/impl/sdk/d/s$a;

    invoke-virtual {v2, v1, v3}, Lcom/applovin/impl/sdk/d/s;->a(Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/s$a;)V

    :goto_23
    monitor-exit v0

    return-void

    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public b(Lcom/applovin/impl/sdk/b/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/applovin/impl/sdk/b/d<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->r:Lcom/applovin/impl/sdk/b/e;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/b/e;->a(Lcom/applovin/impl/sdk/b/d;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->m:Lcom/applovin/impl/sdk/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting user id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovinSdk"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->u:Lcom/applovin/impl/sdk/utils/q;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/utils/q;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/applovin/impl/sdk/b/b;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/sdk/b/b<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/applovin/mediation/MaxAdFormat;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->b:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/b/c;->c(Lcom/applovin/impl/sdk/b/b;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/applovin/impl/sdk/b/d;->z:Lcom/applovin/impl/sdk/b/d;

    invoke-virtual {p0, v0, p1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/d;Ljava/lang/Object;)V

    return-void
.end method

.method public c()Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->T:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/applovin/impl/sdk/j;->W:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public d()Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->T:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/applovin/impl/sdk/j;->X:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public e()Z
    .registers 3

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/j;->t()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HSrCHRtOan6wp2kwOIGJC1RDtuSrF2mWVbio2aBcMHX9KF3iTJ1lLSzCKP1ZSo5yNolPNw1kCTtWpxELFF4ah1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public f()V
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->ab:Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;

    if-eqz v0, :cond_42

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/j;->d()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    iput-object v2, p0, Lcom/applovin/impl/sdk/j;->ab:Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;

    iput-object v2, p0, Lcom/applovin/impl/sdk/j;->ac:Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;

    goto :goto_28

    :cond_10
    iget-object v1, p0, Lcom/applovin/impl/sdk/j;->ac:Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;

    if-ne v1, v0, :cond_15

    return-void

    :cond_15
    sget-object v1, Lcom/applovin/impl/sdk/b/b;->ab:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_26

    iput-object v2, p0, Lcom/applovin/impl/sdk/j;->ab:Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;

    goto :goto_28

    :cond_26
    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->ac:Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;

    :goto_28
    const-wide/16 v1, 0x0

    sget-object v3, Lcom/applovin/impl/sdk/b/b;->ac:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p0, v3}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    new-instance v3, Lcom/applovin/impl/sdk/j$2;

    invoke-direct {v3, p0, v0}, Lcom/applovin/impl/sdk/j$2;-><init>(Lcom/applovin/impl/sdk/j;Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;)V

    invoke-static {v3, v1, v2}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    :cond_42
    return-void
.end method

.method public g()V
    .registers 7

    const-string v0, "AppLovinSdk"

    const-string v1, "Resetting SDK state..."

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->p:Lcom/applovin/impl/sdk/c/h;

    sget-object v1, Lcom/applovin/impl/sdk/c/g;->g:Lcom/applovin/impl/sdk/c/g;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/c/h;->b(Lcom/applovin/impl/sdk/c/g;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/j;->b:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/b/c;->c()V

    iget-object v2, p0, Lcom/applovin/impl/sdk/j;->b:Lcom/applovin/impl/sdk/b/c;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/b/c;->a()V

    iget-object v2, p0, Lcom/applovin/impl/sdk/j;->p:Lcom/applovin/impl/sdk/c/h;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/c/h;->a()V

    iget-object v2, p0, Lcom/applovin/impl/sdk/j;->z:Lcom/applovin/impl/sdk/c/c;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/c/c;->b()V

    iget-object v2, p0, Lcom/applovin/impl/sdk/j;->p:Lcom/applovin/impl/sdk/c/h;

    sget-object v3, Lcom/applovin/impl/sdk/c/g;->g:Lcom/applovin/impl/sdk/c/g;

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    invoke-virtual {v2, v3, v0, v1}, Lcom/applovin/impl/sdk/c/h;->b(Lcom/applovin/impl/sdk/c/g;J)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->U:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/j;->b()V

    goto :goto_40

    :cond_3b
    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->U:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_40
    return-void
.end method

.method public h()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->P:Lcom/applovin/impl/mediation/debugger/a;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/a;->b()V

    return-void
.end method

.method public i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->u:Lcom/applovin/impl/sdk/utils/q;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/q;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->u:Lcom/applovin/impl/sdk/utils/q;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/q;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->u:Lcom/applovin/impl/sdk/utils/q;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/q;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Lcom/applovin/sdk/AppLovinSdkSettings;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->f:Lcom/applovin/sdk/AppLovinSdkSettings;

    return-object v0
.end method

.method public m()Lcom/applovin/sdk/AppLovinSdkConfiguration;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->ad:Lcom/applovin/sdk/AppLovinSdkConfiguration;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/applovin/impl/sdk/b/d;->z:Lcom/applovin/impl/sdk/b/d;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public o()Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->g:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    return-object v0
.end method

.method public p()Lcom/applovin/impl/sdk/NativeAdServiceImpl;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->h:Lcom/applovin/impl/sdk/NativeAdServiceImpl;

    return-object v0
.end method

.method public q()Lcom/applovin/sdk/AppLovinEventService;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->i:Lcom/applovin/impl/sdk/EventServiceImpl;

    return-object v0
.end method

.method public r()Lcom/applovin/sdk/AppLovinUserService;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->j:Lcom/applovin/impl/sdk/UserServiceImpl;

    return-object v0
.end method

.method public s()Lcom/applovin/impl/sdk/VariableServiceImpl;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->k:Lcom/applovin/impl/sdk/VariableServiceImpl;

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->c:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoreSdk{sdkKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/sdk/j;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/applovin/impl/sdk/j;->X:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isFirstSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/applovin/impl/sdk/j;->Z:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/j;->Y:Z

    return v0
.end method

.method public v()Lcom/applovin/impl/sdk/q;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->m:Lcom/applovin/impl/sdk/q;

    return-object v0
.end method

.method public w()Lcom/applovin/impl/mediation/i;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->L:Lcom/applovin/impl/mediation/i;

    return-object v0
.end method

.method public x()Lcom/applovin/impl/mediation/h;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->M:Lcom/applovin/impl/mediation/h;

    return-object v0
.end method

.method public y()Lcom/applovin/impl/mediation/MediationServiceImpl;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->N:Lcom/applovin/impl/mediation/MediationServiceImpl;

    return-object v0
.end method

.method public z()Lcom/applovin/impl/sdk/r;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->Q:Lcom/applovin/impl/sdk/r;

    return-object v0
.end method
