.class Lcom/adcolony/sdk/w$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/w;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/w;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/w;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/adcolony/sdk/w$c;->a:Lcom/adcolony/sdk/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/adcolony/sdk/x;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->b()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "level"

    invoke-static {p1, v0}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result p1

    sput p1, Lcom/adcolony/sdk/w;->m:I

    return-void
.end method
