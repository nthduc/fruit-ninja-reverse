.class public Lcom/applovin/impl/mediation/debugger/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/impl/sdk/network/a$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/applovin/impl/sdk/network/a$c<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/applovin/mediation/MaxDebuggerActivity;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final c:Lcom/applovin/impl/sdk/j;

.field private final d:Lcom/applovin/impl/sdk/q;

.field private final e:Lcom/applovin/impl/mediation/debugger/ui/a/b;

.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/applovin/impl/mediation/debugger/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Lcom/applovin/impl/sdk/j;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/mediation/debugger/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/a;->c:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/mediation/debugger/a;->d:Lcom/applovin/impl/sdk/q;

    new-instance v0, Lcom/applovin/impl/mediation/debugger/ui/a/b;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->F()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/applovin/impl/mediation/debugger/ui/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/applovin/impl/mediation/debugger/a;->e:Lcom/applovin/impl/mediation/debugger/ui/a/b;

    return-void
.end method

.method static synthetic a(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .registers 1

    sput-object p0, Lcom/applovin/impl/mediation/debugger/a;->a:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private a(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/applovin/impl/sdk/j;",
            ")",
            "Ljava/util/List<",
            "Lcom/applovin/impl/mediation/debugger/a/d;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const-string v1, "networks"

    invoke-static {p1, v1, v0, p2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;Lcom/applovin/impl/sdk/j;)Lorg/json/JSONArray;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_15
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2d

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, p2}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONArray;ILorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2a

    new-instance v3, Lcom/applovin/impl/mediation/debugger/a/d;

    invoke-direct {v3, v2, p2}, Lcom/applovin/impl/mediation/debugger/a/d;-><init>(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_2d
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/debugger/a;)Z
    .registers 1

    invoke-direct {p0}, Lcom/applovin/impl/mediation/debugger/a;->f()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/applovin/impl/mediation/debugger/a;)Lcom/applovin/impl/mediation/debugger/ui/a/b;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/mediation/debugger/a;->e:Lcom/applovin/impl/mediation/debugger/ui/a/b;

    return-object p0
.end method

.method static synthetic c(Lcom/applovin/impl/mediation/debugger/a;)Lcom/applovin/impl/sdk/j;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/mediation/debugger/a;->c:Lcom/applovin/impl/sdk/j;

    return-object p0
.end method

.method static synthetic c()Ljava/lang/ref/WeakReference;
    .registers 1

    sget-object v0, Lcom/applovin/impl/mediation/debugger/a;->a:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic d()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    sget-object v0, Lcom/applovin/impl/mediation/debugger/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private e()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v0, Lcom/applovin/impl/mediation/debugger/b/a;

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/a;->c:Lcom/applovin/impl/sdk/j;

    invoke-direct {v0, p0, v1}, Lcom/applovin/impl/mediation/debugger/b/a;-><init>(Lcom/applovin/impl/sdk/network/a$c;Lcom/applovin/impl/sdk/j;)V

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/a;->c:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->M()Lcom/applovin/impl/sdk/d/s;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/sdk/d/s$a;->j:Lcom/applovin/impl/sdk/d/s$a;

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/d/s;->a(Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/s$a;)V

    :cond_1c
    return-void
.end method

.method private f()Z
    .registers 2

    sget-object v0, Lcom/applovin/impl/mediation/debugger/a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method


# virtual methods
.method public a(I)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a;->d:Lcom/applovin/impl/sdk/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to fetch mediation debugger info: server returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MediationDebuggerService"

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "AppLovinSdk"

    const-string v0, "Unable to show mediation debugger."

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/a;->e:Lcom/applovin/impl/mediation/debugger/ui/a/b;

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a;->c:Lcom/applovin/impl/sdk/j;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/applovin/impl/mediation/debugger/ui/a/b;->a(Ljava/util/List;Lcom/applovin/impl/sdk/j;)V

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .registers 3

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/applovin/impl/mediation/debugger/a;->a(Lorg/json/JSONObject;I)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;I)V
    .registers 9

    iget-object p2, p0, Lcom/applovin/impl/mediation/debugger/a;->c:Lcom/applovin/impl/sdk/j;

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/mediation/debugger/a;->a(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/applovin/impl/mediation/debugger/a;->e:Lcom/applovin/impl/mediation/debugger/ui/a/b;

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a;->c:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p2, p1, v0}, Lcom/applovin/impl/mediation/debugger/ui/a/b;->a(Ljava/util/List;Lcom/applovin/impl/sdk/j;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\n================== PRIVACY =================="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a;->c:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->F()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n================== NETWORKS =================="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "MediationDebuggerService"

    if-eqz v0, :cond_69

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/mediation/debugger/a/d;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/a/d;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/applovin/impl/mediation/debugger/a;->c:Lcom/applovin/impl/sdk/j;

    sget-object v5, Lcom/applovin/impl/sdk/b/b;->ad:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v4, v5}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v3, v4, :cond_65

    invoke-static {v1, v2}, Lcom/applovin/impl/sdk/q;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_65
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2f

    :cond_69
    const-string p1, "\n================== END =================="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/applovin/impl/sdk/q;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/applovin/impl/mediation/debugger/a;->g:Z

    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/impl/mediation/debugger/a;->g:Z

    return v0
.end method

.method public b()V
    .registers 5

    invoke-direct {p0}, Lcom/applovin/impl/mediation/debugger/a;->e()V

    invoke-direct {p0}, Lcom/applovin/impl/mediation/debugger/a;->f()Z

    move-result v0

    const-string v1, "AppLovinSdk"

    if-nez v0, :cond_3e

    sget-object v0, Lcom/applovin/impl/mediation/debugger/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a;->c:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->ab()Lcom/applovin/impl/sdk/a;

    move-result-object v0

    new-instance v2, Lcom/applovin/impl/mediation/debugger/a$1;

    invoke-direct {v2, p0}, Lcom/applovin/impl/mediation/debugger/a$1;-><init>(Lcom/applovin/impl/mediation/debugger/a;)V

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/a;->a(Lcom/applovin/impl/sdk/utils/a;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a;->c:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->F()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/applovin/mediation/MaxDebuggerActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "Starting mediation debugger..."

    invoke-static {v1, v3}, Lcom/applovin/impl/sdk/q;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_43

    :cond_3e
    const-string v0, "Mediation debugger is already showing"

    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_43
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediationDebuggerService{, listAdapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/a;->e:Lcom/applovin/impl/mediation/debugger/ui/a/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
