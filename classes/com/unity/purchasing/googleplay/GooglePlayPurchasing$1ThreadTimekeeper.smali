.class Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$1ThreadTimekeeper;
.super Ljava/lang/Object;
.source "GooglePlayPurchasing.java"

# interfaces
.implements Lcom/unity/purchasing/googleplay/ITimekeeper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->instance(Lcom/unity/purchasing/common/IUnityCallback;)Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ThreadTimekeeper"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sleep(J)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 275
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V

    return-void
.end method
