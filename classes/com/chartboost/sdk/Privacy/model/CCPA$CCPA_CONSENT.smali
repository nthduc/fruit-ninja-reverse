.class public final enum Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Privacy/model/CCPA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CCPA_CONSENT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;

.field public static final enum OPT_IN_SALE:Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;

.field public static final enum OPT_OUT_SALE:Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;

    const/4 v1, 0x0

    const-string v2, "OPT_OUT_SALE"

    const-string v3, "1NY-"

    invoke-direct {v0, v2, v1, v3}, Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;->OPT_OUT_SALE:Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;

    .line 2
    new-instance v0, Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;

    const/4 v2, 0x1

    const-string v3, "OPT_IN_SALE"

    const-string v4, "1NN-"

    invoke-direct {v0, v3, v2, v4}, Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;->OPT_IN_SALE:Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;

    const/4 v3, 0x2

    .line 3
    new-array v3, v3, [Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;

    sget-object v4, Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;->OPT_OUT_SALE:Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;->$VALUES:[Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;
    .registers 2

    .line 1
    sget-object v0, Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;->OPT_OUT_SALE:Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2
    sget-object p0, Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;->OPT_OUT_SALE:Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;

    return-object p0

    .line 3
    :cond_f
    sget-object v0, Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;->OPT_IN_SALE:Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    .line 4
    sget-object p0, Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;->OPT_IN_SALE:Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;

    return-object p0

    :cond_1e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;
    .registers 2

    .line 1
    const-class v0, Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;

    return-object p0
.end method

.method public static values()[Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;
    .registers 1

    .line 1
    sget-object v0, Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;->$VALUES:[Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;

    invoke-virtual {v0}, [Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Privacy/model/CCPA$CCPA_CONSENT;->a:Ljava/lang/String;

    return-object v0
.end method
