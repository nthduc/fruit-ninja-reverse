.class public Lcom/applovin/impl/adview/InterstitialAdDialogCreatorImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/adview/InterstitialAdDialogCreator;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/applovin/impl/adview/o;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/applovin/impl/adview/InterstitialAdDialogCreatorImpl;->a:Ljava/lang/Object;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/applovin/impl/adview/InterstitialAdDialogCreatorImpl;->b:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/applovin/impl/adview/InterstitialAdDialogCreatorImpl;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInterstitialAdDialog(Lcom/applovin/sdk/AppLovinSdk;Landroid/content/Context;)Lcom/applovin/adview/AppLovinInterstitialAdDialog;
    .registers 6

    if-nez p1, :cond_6

    invoke-static {p2}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object p1

    :cond_6
    sget-object v0, Lcom/applovin/impl/adview/InterstitialAdDialogCreatorImpl;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9
    sget-object v1, Lcom/applovin/impl/adview/InterstitialAdDialogCreatorImpl;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/impl/adview/o;

    if-eqz v1, :cond_24

    sget-object v2, Lcom/applovin/impl/adview/InterstitialAdDialogCreatorImpl;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p2, :cond_1c

    goto :goto_24

    :cond_1c
    const-string p1, "InterstitialAdDialogCreator"

    const-string p2, "An interstitial dialog is already showing, returning it"

    invoke-static {p1, p2}, Lcom/applovin/impl/sdk/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37

    :cond_24
    :goto_24
    new-instance v1, Lcom/applovin/impl/adview/o;

    invoke-direct {v1, p1, p2}, Lcom/applovin/impl/adview/o;-><init>(Lcom/applovin/sdk/AppLovinSdk;Landroid/content/Context;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p1, Lcom/applovin/impl/adview/InterstitialAdDialogCreatorImpl;->b:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p1, Lcom/applovin/impl/adview/InterstitialAdDialogCreatorImpl;->c:Ljava/lang/ref/WeakReference;

    :goto_37
    monitor-exit v0

    return-object v1

    :catchall_39
    move-exception p1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_9 .. :try_end_3b} :catchall_39

    throw p1
.end method
