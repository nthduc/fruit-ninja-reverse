.class Lcom/applovin/impl/sdk/a/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/impl/sdk/ad/i;
.implements Lcom/applovin/sdk/AppLovinAdClickListener;
.implements Lcom/applovin/sdk/AppLovinAdRewardListener;
.implements Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/a/a;

.field private final b:Lcom/applovin/sdk/AppLovinAdDisplayListener;

.field private final c:Lcom/applovin/sdk/AppLovinAdClickListener;

.field private final d:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

.field private final e:Lcom/applovin/sdk/AppLovinAdRewardListener;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/sdk/a/a;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;)V
    .registers 6

    iput-object p1, p0, Lcom/applovin/impl/sdk/a/a$b;->a:Lcom/applovin/impl/sdk/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/applovin/impl/sdk/a/a$b;->b:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    iput-object p5, p0, Lcom/applovin/impl/sdk/a/a$b;->c:Lcom/applovin/sdk/AppLovinAdClickListener;

    iput-object p3, p0, Lcom/applovin/impl/sdk/a/a$b;->d:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    iput-object p2, p0, Lcom/applovin/impl/sdk/a/a$b;->e:Lcom/applovin/sdk/AppLovinAdRewardListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/sdk/a/a;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/impl/sdk/a/a$1;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/applovin/impl/sdk/a/a$b;-><init>(Lcom/applovin/impl/sdk/a/a;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/sdk/ad/g;)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/a$b;->a:Lcom/applovin/impl/sdk/a/a;

    invoke-static {v0}, Lcom/applovin/impl/sdk/a/a;->a(Lcom/applovin/impl/sdk/a/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/a$b;->a:Lcom/applovin/impl/sdk/a/a;

    invoke-static {v0}, Lcom/applovin/impl/sdk/a/a;->b(Lcom/applovin/impl/sdk/a/a;)Z

    move-result v0

    if-nez v0, :cond_34

    :cond_14
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/g;->aG()V

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/a$b;->a:Lcom/applovin/impl/sdk/a/a;

    invoke-static {v0}, Lcom/applovin/impl/sdk/a/a;->b(Lcom/applovin/impl/sdk/a/a;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/16 v0, -0x1f4

    const-string v1, "network_timeout"

    goto :goto_28

    :cond_24
    const/16 v0, -0x258

    const-string v1, "user_closed_video"

    :goto_28
    invoke-static {v1}, Lcom/applovin/impl/sdk/a/c;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/a/c;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/applovin/impl/sdk/ad/g;->a(Lcom/applovin/impl/sdk/a/c;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/a/a$b;->e:Lcom/applovin/sdk/AppLovinAdRewardListener;

    invoke-static {v1, p1, v0}, Lcom/applovin/impl/sdk/utils/j;->a(Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAd;I)V

    :cond_34
    iget-object v0, p0, Lcom/applovin/impl/sdk/a/a$b;->a:Lcom/applovin/impl/sdk/a/a;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/a/a;->a(Lcom/applovin/impl/sdk/a/a;Lcom/applovin/sdk/AppLovinAd;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/a$b;->b:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/utils/j;->b(Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAd;)V

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/g;->af()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_5f

    new-instance v0, Lcom/applovin/impl/sdk/d/z;

    iget-object v1, p0, Lcom/applovin/impl/sdk/a/a$b;->a:Lcom/applovin/impl/sdk/a/a;

    iget-object v1, v1, Lcom/applovin/impl/sdk/a/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-direct {v0, p1, v1}, Lcom/applovin/impl/sdk/d/z;-><init>(Lcom/applovin/impl/sdk/ad/g;Lcom/applovin/impl/sdk/j;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/a/a$b;->a:Lcom/applovin/impl/sdk/a/a;

    iget-object p1, p1, Lcom/applovin/impl/sdk/a/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->M()Lcom/applovin/impl/sdk/d/s;

    move-result-object p1

    sget-object v1, Lcom/applovin/impl/sdk/d/s$a;->i:Lcom/applovin/impl/sdk/d/s$a;

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/d/s;->a(Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/s$a;)V

    :cond_5f
    return-void
.end method


# virtual methods
.method public adClicked(Lcom/applovin/sdk/AppLovinAd;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/a$b;->c:Lcom/applovin/sdk/AppLovinAdClickListener;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/utils/j;->a(Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method public adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/a$b;->b:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/utils/j;->a(Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method public adHidden(Lcom/applovin/sdk/AppLovinAd;)V
    .registers 5

    instance-of v0, p1, Lcom/applovin/impl/sdk/ad/h;

    if-eqz v0, :cond_a

    check-cast p1, Lcom/applovin/impl/sdk/ad/h;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/h;->a()Lcom/applovin/sdk/AppLovinAd;

    move-result-object p1

    :cond_a
    instance-of v0, p1, Lcom/applovin/impl/sdk/ad/g;

    if-eqz v0, :cond_14

    check-cast p1, Lcom/applovin/impl/sdk/ad/g;

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/a/a$b;->a(Lcom/applovin/impl/sdk/ad/g;)V

    goto :goto_32

    :cond_14
    iget-object v0, p0, Lcom/applovin/impl/sdk/a/a$b;->a:Lcom/applovin/impl/sdk/a/a;

    iget-object v0, v0, Lcom/applovin/impl/sdk/a/a;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Something is terribly wrong. Received `adHidden` callback for invalid ad of type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "IncentivizedAdController"

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_32
    return-void
.end method

.method public onAdDisplayFailed(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/a$b;->b:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/utils/j;->a(Lcom/applovin/sdk/AppLovinAdDisplayListener;Ljava/lang/String;)V

    return-void
.end method

.method public userDeclinedToViewAd(Lcom/applovin/sdk/AppLovinAd;)V
    .registers 2

    return-void
.end method

.method public userOverQuota(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/sdk/AppLovinAd;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/a$b;->a:Lcom/applovin/impl/sdk/a/a;

    const-string v1, "quota_exceeded"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/a/a;->a(Lcom/applovin/impl/sdk/a/a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/a$b;->e:Lcom/applovin/sdk/AppLovinAdRewardListener;

    invoke-static {v0, p1, p2}, Lcom/applovin/impl/sdk/utils/j;->b(Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V

    return-void
.end method

.method public userRewardRejected(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/sdk/AppLovinAd;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/a$b;->a:Lcom/applovin/impl/sdk/a/a;

    const-string v1, "rejected"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/a/a;->a(Lcom/applovin/impl/sdk/a/a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/a$b;->e:Lcom/applovin/sdk/AppLovinAdRewardListener;

    invoke-static {v0, p1, p2}, Lcom/applovin/impl/sdk/utils/j;->c(Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V

    return-void
.end method

.method public userRewardVerified(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/sdk/AppLovinAd;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/a$b;->a:Lcom/applovin/impl/sdk/a/a;

    const-string v1, "accepted"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/a/a;->a(Lcom/applovin/impl/sdk/a/a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/a$b;->e:Lcom/applovin/sdk/AppLovinAdRewardListener;

    invoke-static {v0, p1, p2}, Lcom/applovin/impl/sdk/utils/j;->a(Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V

    return-void
.end method

.method public validationRequestFailed(Lcom/applovin/sdk/AppLovinAd;I)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/a$b;->a:Lcom/applovin/impl/sdk/a/a;

    const-string v1, "network_timeout"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/a/a;->a(Lcom/applovin/impl/sdk/a/a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/a$b;->e:Lcom/applovin/sdk/AppLovinAdRewardListener;

    invoke-static {v0, p1, p2}, Lcom/applovin/impl/sdk/utils/j;->a(Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAd;I)V

    return-void
.end method

.method public videoPlaybackBegan(Lcom/applovin/sdk/AppLovinAd;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/a$b;->d:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/utils/j;->a(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method public videoPlaybackEnded(Lcom/applovin/sdk/AppLovinAd;DZ)V
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/a$b;->d:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/applovin/impl/sdk/utils/j;->a(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAd;DZ)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/a/a$b;->a:Lcom/applovin/impl/sdk/a/a;

    invoke-static {p1, p4}, Lcom/applovin/impl/sdk/a/a;->a(Lcom/applovin/impl/sdk/a/a;Z)Z

    return-void
.end method
