.class Lcom/moat/analytics/mobile/vng/g$3;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/vng/g;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/vng/g;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/vng/g;)V
    .registers 2

    iput-object p1, p0, Lcom/moat/analytics/mobile/vng/g$3;->a:Lcom/moat/analytics/mobile/vng/g;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    iget-object p1, p0, Lcom/moat/analytics/mobile/vng/g$3;->a:Lcom/moat/analytics/mobile/vng/g;

    invoke-static {p1}, Lcom/moat/analytics/mobile/vng/g;->a(Lcom/moat/analytics/mobile/vng/g;)Z

    move-result p1

    if-nez p1, :cond_2d

    const/4 p1, 0x3

    const-string p2, "GlobalWebView"

    const-string v0, "onPageFinished is called for the first time. Flushing event queue"

    invoke-static {p1, p2, p0, v0}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_10
    iget-object p1, p0, Lcom/moat/analytics/mobile/vng/g$3;->a:Lcom/moat/analytics/mobile/vng/g;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/moat/analytics/mobile/vng/g;->a(Lcom/moat/analytics/mobile/vng/g;Z)Z

    iget-object p1, p0, Lcom/moat/analytics/mobile/vng/g$3;->a:Lcom/moat/analytics/mobile/vng/g;

    iget-object p1, p1, Lcom/moat/analytics/mobile/vng/g;->b:Lcom/moat/analytics/mobile/vng/j;

    invoke-virtual {p1}, Lcom/moat/analytics/mobile/vng/j;->a()V

    iget-object p1, p0, Lcom/moat/analytics/mobile/vng/g$3;->a:Lcom/moat/analytics/mobile/vng/g;

    iget-object p1, p1, Lcom/moat/analytics/mobile/vng/g;->b:Lcom/moat/analytics/mobile/vng/j;

    iget-object p2, p0, Lcom/moat/analytics/mobile/vng/g$3;->a:Lcom/moat/analytics/mobile/vng/g;

    iget-object p2, p2, Lcom/moat/analytics/mobile/vng/g;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/moat/analytics/mobile/vng/j;->c(Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_28} :catch_29

    goto :goto_2d

    :catch_29
    move-exception p1

    invoke-static {p1}, Lcom/moat/analytics/mobile/vng/n;->a(Ljava/lang/Exception;)V

    :cond_2d
    :goto_2d
    return-void
.end method
