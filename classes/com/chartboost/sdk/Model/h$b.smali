.class public Lcom/chartboost/sdk/Model/h$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Model/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/chartboost/sdk/Model/h$b;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/chartboost/sdk/Model/h$b;

    invoke-direct {v0}, Lcom/chartboost/sdk/Model/h$b;-><init>()V

    .line 3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v2, "us_privacy"

    .line 4
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v2, "privacyStandards"

    .line 6
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_21

    .line 8
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 9
    invoke-static {p0, v1, v2}, Lcom/chartboost/sdk/Model/h$b;->a(Lorg/json/JSONArray;Ljava/util/HashSet;I)V

    .line 10
    invoke-static {v1, v2}, Lcom/chartboost/sdk/Model/h$b;->a(Ljava/util/HashSet;I)V

    .line 13
    :cond_21
    iput-object v1, v0, Lcom/chartboost/sdk/Model/h$b;->a:Ljava/util/HashSet;

    return-object v0
.end method

.method private static a(Ljava/util/HashSet;I)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    if-nez p1, :cond_5

    .line 15
    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    :cond_5
    return-void
.end method

.method private static a(Lorg/json/JSONArray;Ljava/util/HashSet;I)V
    .registers 5
    .param p0    # Lorg/json/JSONArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_d

    .line 14
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_d
    return-void
.end method


# virtual methods
.method public a()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/chartboost/sdk/Model/h$b;->a:Ljava/util/HashSet;

    return-object v0
.end method
