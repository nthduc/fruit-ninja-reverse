.class Lcom/moat/analytics/mobile/vng/w$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/vng/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final a:Ljava/lang/Long;

.field final b:Lcom/moat/analytics/mobile/vng/w$b;

.field final synthetic c:Lcom/moat/analytics/mobile/vng/w;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/vng/w;Ljava/lang/Long;Lcom/moat/analytics/mobile/vng/w$b;)V
    .registers 4

    iput-object p1, p0, Lcom/moat/analytics/mobile/vng/w$c;->c:Lcom/moat/analytics/mobile/vng/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/moat/analytics/mobile/vng/w$c;->a:Ljava/lang/Long;

    iput-object p3, p0, Lcom/moat/analytics/mobile/vng/w$c;->b:Lcom/moat/analytics/mobile/vng/w$b;

    return-void
.end method
