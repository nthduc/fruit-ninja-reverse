.class Lcom/moat/analytics/mobile/vng/v$e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/moat/analytics/mobile/vng/WebAdTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/vng/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public removeListener()V
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

.method public startTracking()V
    .registers 1

    return-void
.end method

.method public stopTracking()V
    .registers 1

    return-void
.end method