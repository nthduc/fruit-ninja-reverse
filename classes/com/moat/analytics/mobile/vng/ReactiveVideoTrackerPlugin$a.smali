.class Lcom/moat/analytics/mobile/vng/ReactiveVideoTrackerPlugin$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/vng/ReactiveVideoTrackerPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changeTargetView(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public dispatchEvent(Lcom/moat/analytics/mobile/vng/MoatAdEvent;)V
    .registers 2

    return-void
.end method

.method public removeListener()V
    .registers 1

    return-void
.end method

.method public removeVideoListener()V
    .registers 1

    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public setListener(Lcom/moat/analytics/mobile/vng/TrackerListener;)V
    .registers 2

    return-void
.end method

.method public setPlayerVolume(Ljava/lang/Double;)V
    .registers 2

    return-void
.end method

.method public setVideoListener(Lcom/moat/analytics/mobile/vng/VideoTrackerListener;)V
    .registers 2

    return-void
.end method

.method public stopTracking()V
    .registers 1

    return-void
.end method

.method public trackVideoAd(Ljava/util/Map;Ljava/lang/Integer;Landroid/view/View;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method
