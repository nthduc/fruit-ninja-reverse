.class public final enum Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;
.super Ljava/lang/Enum;
.source "AuctionHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/AuctionHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ISAuctionPerformance"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

.field public static final enum ISAuctionPerformanceDidntAttemptToLoad:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

.field public static final enum ISAuctionPerformanceFailedToLoad:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

.field public static final enum ISAuctionPerformanceFailedToShow:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

.field public static final enum ISAuctionPerformanceLoadedSuccessfully:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

.field public static final enum ISAuctionPerformanceNotPartOfWaterfall:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

.field public static final enum ISAuctionPerformanceShowedSuccessfully:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 25
    new-instance v0, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    const/4 v1, 0x0

    const-string v2, "ISAuctionPerformanceDidntAttemptToLoad"

    invoke-direct {v0, v2, v1}, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceDidntAttemptToLoad:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    .line 26
    new-instance v0, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    const/4 v2, 0x1

    const-string v3, "ISAuctionPerformanceFailedToLoad"

    invoke-direct {v0, v3, v2}, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceFailedToLoad:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    .line 27
    new-instance v0, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    const/4 v3, 0x2

    const-string v4, "ISAuctionPerformanceLoadedSuccessfully"

    invoke-direct {v0, v4, v3}, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceLoadedSuccessfully:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    .line 28
    new-instance v0, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    const/4 v4, 0x3

    const-string v5, "ISAuctionPerformanceFailedToShow"

    invoke-direct {v0, v5, v4}, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceFailedToShow:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    .line 29
    new-instance v0, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    const/4 v5, 0x4

    const-string v6, "ISAuctionPerformanceShowedSuccessfully"

    invoke-direct {v0, v6, v5}, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceShowedSuccessfully:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    .line 30
    new-instance v0, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    const/4 v6, 0x5

    const-string v7, "ISAuctionPerformanceNotPartOfWaterfall"

    invoke-direct {v0, v7, v6}, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceNotPartOfWaterfall:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    const/4 v0, 0x6

    .line 24
    new-array v0, v0, [Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    sget-object v7, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceDidntAttemptToLoad:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    aput-object v7, v0, v1

    sget-object v1, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceFailedToLoad:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceLoadedSuccessfully:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceFailedToShow:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceShowedSuccessfully:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceNotPartOfWaterfall:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    aput-object v1, v0, v6

    sput-object v0, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->$VALUES:[Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;
    .registers 2

    .line 24
    const-class v0, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;
    .registers 1

    .line 24
    sget-object v0, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->$VALUES:[Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    invoke-virtual {v0}, [Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    return-object v0
.end method
