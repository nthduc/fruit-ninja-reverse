.class public Lcom/iab/omid/library/ironsrc/b/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/iab/omid/library/ironsrc/b/c;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/iab/omid/library/ironsrc/b/c;

    invoke-direct {v0}, Lcom/iab/omid/library/ironsrc/b/c;-><init>()V

    sput-object v0, Lcom/iab/omid/library/ironsrc/b/c;->a:Lcom/iab/omid/library/ironsrc/b/c;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/iab/omid/library/ironsrc/b/c;
    .registers 1

    sget-object v0, Lcom/iab/omid/library/ironsrc/b/c;->a:Lcom/iab/omid/library/ironsrc/b/c;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 2

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    iput-object p1, p0, Lcom/iab/omid/library/ironsrc/b/c;->b:Landroid/content/Context;

    return-void
.end method

.method public b()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/ironsrc/b/c;->b:Landroid/content/Context;

    return-object v0
.end method
