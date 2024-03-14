.class public final enum Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Tracking/CBAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CBIAPPurchaseInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AMAZON_PURCHASE_TOKEN:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

.field public static final enum AMAZON_USER_ID:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

.field public static final enum GOOGLE_PURCHASE_DATA:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

.field public static final enum GOOGLE_PURCHASE_SIGNATURE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

.field public static final enum PRODUCT_CURRENCY_CODE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

.field public static final enum PRODUCT_DESCRIPTION:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

.field public static final enum PRODUCT_ID:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

.field public static final enum PRODUCT_PRICE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

.field public static final enum PRODUCT_TITLE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

.field private static final synthetic a:[Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 1
    new-instance v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    const/4 v1, 0x0

    const-string v2, "PRODUCT_ID"

    invoke-direct {v0, v2, v1}, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_ID:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    .line 2
    new-instance v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    const/4 v2, 0x1

    const-string v3, "PRODUCT_TITLE"

    invoke-direct {v0, v3, v2}, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_TITLE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    .line 3
    new-instance v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    const/4 v3, 0x2

    const-string v4, "PRODUCT_DESCRIPTION"

    invoke-direct {v0, v4, v3}, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_DESCRIPTION:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    .line 4
    new-instance v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    const/4 v4, 0x3

    const-string v5, "PRODUCT_PRICE"

    invoke-direct {v0, v5, v4}, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_PRICE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    .line 5
    new-instance v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    const/4 v5, 0x4

    const-string v6, "PRODUCT_CURRENCY_CODE"

    invoke-direct {v0, v6, v5}, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_CURRENCY_CODE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    .line 6
    new-instance v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    const/4 v6, 0x5

    const-string v7, "GOOGLE_PURCHASE_DATA"

    invoke-direct {v0, v7, v6}, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->GOOGLE_PURCHASE_DATA:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    .line 7
    new-instance v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    const/4 v7, 0x6

    const-string v8, "GOOGLE_PURCHASE_SIGNATURE"

    invoke-direct {v0, v8, v7}, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->GOOGLE_PURCHASE_SIGNATURE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    .line 8
    new-instance v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    const/4 v8, 0x7

    const-string v9, "AMAZON_PURCHASE_TOKEN"

    invoke-direct {v0, v9, v8}, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->AMAZON_PURCHASE_TOKEN:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    .line 9
    new-instance v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    const/16 v9, 0x8

    const-string v10, "AMAZON_USER_ID"

    invoke-direct {v0, v10, v9}, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->AMAZON_USER_ID:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    const/16 v10, 0x9

    .line 10
    new-array v10, v10, [Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    sget-object v11, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_ID:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    aput-object v11, v10, v1

    sget-object v1, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_TITLE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    aput-object v1, v10, v2

    sget-object v1, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_DESCRIPTION:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    aput-object v1, v10, v3

    sget-object v1, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_PRICE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    aput-object v1, v10, v4

    sget-object v1, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_CURRENCY_CODE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    aput-object v1, v10, v5

    sget-object v1, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->GOOGLE_PURCHASE_DATA:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    aput-object v1, v10, v6

    sget-object v1, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->GOOGLE_PURCHASE_SIGNATURE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    aput-object v1, v10, v7

    sget-object v1, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->AMAZON_PURCHASE_TOKEN:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    aput-object v1, v10, v8

    aput-object v0, v10, v9

    sput-object v10, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->a:[Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;
    .registers 2

    .line 1
    const-class v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    return-object p0
.end method

.method public static values()[Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;
    .registers 1

    .line 1
    sget-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->a:[Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    invoke-virtual {v0}, [Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    return-object v0
.end method
