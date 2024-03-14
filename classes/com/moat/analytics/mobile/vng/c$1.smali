.class Lcom/moat/analytics/mobile/vng/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/vng/c;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/vng/c;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/vng/c;)V
    .registers 2

    iput-object p1, p0, Lcom/moat/analytics/mobile/vng/c$1;->a:Lcom/moat/analytics/mobile/vng/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const/4 v0, 0x3

    :try_start_1
    const-string v1, "BaseVideoTracker"

    const-string v2, "Shutting down."

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/c$1;->a:Lcom/moat/analytics/mobile/vng/c;

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/c;->a(Lcom/moat/analytics/mobile/vng/c;)Lcom/moat/analytics/mobile/vng/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/vng/g;->a()V

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/c$1;->a:Lcom/moat/analytics/mobile/vng/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/moat/analytics/mobile/vng/c;->a(Lcom/moat/analytics/mobile/vng/c;Lcom/moat/analytics/mobile/vng/VideoTrackerListener;)Lcom/moat/analytics/mobile/vng/VideoTrackerListener;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_18

    goto :goto_1c

    :catch_18
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/n;->a(Ljava/lang/Exception;)V

    :goto_1c
    return-void
.end method
