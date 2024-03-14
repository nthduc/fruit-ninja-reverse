.class public final enum Lcom/facebook/internal/instrument/InstrumentData$Type;
.super Ljava/lang/Enum;
.source "InstrumentData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/instrument/InstrumentData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/internal/instrument/InstrumentData$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/internal/instrument/InstrumentData$Type;

.field public static final enum Analysis:Lcom/facebook/internal/instrument/InstrumentData$Type;

.field public static final enum CrashReport:Lcom/facebook/internal/instrument/InstrumentData$Type;

.field public static final enum CrashShield:Lcom/facebook/internal/instrument/InstrumentData$Type;

.field public static final enum ThreadCheck:Lcom/facebook/internal/instrument/InstrumentData$Type;

.field public static final enum Unknown:Lcom/facebook/internal/instrument/InstrumentData$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 36
    new-instance v0, Lcom/facebook/internal/instrument/InstrumentData$Type;

    const/4 v1, 0x0

    const-string v2, "Unknown"

    invoke-direct {v0, v2, v1}, Lcom/facebook/internal/instrument/InstrumentData$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/internal/instrument/InstrumentData$Type;->Unknown:Lcom/facebook/internal/instrument/InstrumentData$Type;

    .line 37
    new-instance v0, Lcom/facebook/internal/instrument/InstrumentData$Type;

    const/4 v2, 0x1

    const-string v3, "Analysis"

    invoke-direct {v0, v3, v2}, Lcom/facebook/internal/instrument/InstrumentData$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/internal/instrument/InstrumentData$Type;->Analysis:Lcom/facebook/internal/instrument/InstrumentData$Type;

    .line 38
    new-instance v0, Lcom/facebook/internal/instrument/InstrumentData$Type;

    const/4 v3, 0x2

    const-string v4, "CrashReport"

    invoke-direct {v0, v4, v3}, Lcom/facebook/internal/instrument/InstrumentData$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/internal/instrument/InstrumentData$Type;->CrashReport:Lcom/facebook/internal/instrument/InstrumentData$Type;

    .line 39
    new-instance v0, Lcom/facebook/internal/instrument/InstrumentData$Type;

    const/4 v4, 0x3

    const-string v5, "CrashShield"

    invoke-direct {v0, v5, v4}, Lcom/facebook/internal/instrument/InstrumentData$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/internal/instrument/InstrumentData$Type;->CrashShield:Lcom/facebook/internal/instrument/InstrumentData$Type;

    .line 40
    new-instance v0, Lcom/facebook/internal/instrument/InstrumentData$Type;

    const/4 v5, 0x4

    const-string v6, "ThreadCheck"

    invoke-direct {v0, v6, v5}, Lcom/facebook/internal/instrument/InstrumentData$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/internal/instrument/InstrumentData$Type;->ThreadCheck:Lcom/facebook/internal/instrument/InstrumentData$Type;

    const/4 v0, 0x5

    .line 35
    new-array v0, v0, [Lcom/facebook/internal/instrument/InstrumentData$Type;

    sget-object v6, Lcom/facebook/internal/instrument/InstrumentData$Type;->Unknown:Lcom/facebook/internal/instrument/InstrumentData$Type;

    aput-object v6, v0, v1

    sget-object v1, Lcom/facebook/internal/instrument/InstrumentData$Type;->Analysis:Lcom/facebook/internal/instrument/InstrumentData$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/internal/instrument/InstrumentData$Type;->CrashReport:Lcom/facebook/internal/instrument/InstrumentData$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/internal/instrument/InstrumentData$Type;->CrashShield:Lcom/facebook/internal/instrument/InstrumentData$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/internal/instrument/InstrumentData$Type;->ThreadCheck:Lcom/facebook/internal/instrument/InstrumentData$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/internal/instrument/InstrumentData$Type;->$VALUES:[Lcom/facebook/internal/instrument/InstrumentData$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/internal/instrument/InstrumentData$Type;
    .registers 2

    .line 35
    const-class v0, Lcom/facebook/internal/instrument/InstrumentData$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/internal/instrument/InstrumentData$Type;

    return-object p0
.end method

.method public static values()[Lcom/facebook/internal/instrument/InstrumentData$Type;
    .registers 1

    .line 35
    sget-object v0, Lcom/facebook/internal/instrument/InstrumentData$Type;->$VALUES:[Lcom/facebook/internal/instrument/InstrumentData$Type;

    invoke-virtual {v0}, [Lcom/facebook/internal/instrument/InstrumentData$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/internal/instrument/InstrumentData$Type;

    return-object v0
.end method


# virtual methods
.method public getLogPrefix()Ljava/lang/String;
    .registers 3

    .line 58
    sget-object v0, Lcom/facebook/internal/instrument/InstrumentData$1;->$SwitchMap$com$facebook$internal$instrument$InstrumentData$Type:[I

    invoke-virtual {p0}, Lcom/facebook/internal/instrument/InstrumentData$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_20

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1a

    const/4 v1, 0x4

    if-eq v0, v1, :cond_17

    const-string v0, "Unknown"

    return-object v0

    :cond_17
    const-string v0, "thread_check_log_"

    return-object v0

    :cond_1a
    const-string v0, "shield_log_"

    return-object v0

    :cond_1d
    const-string v0, "crash_log_"

    return-object v0

    :cond_20
    const-string v0, "analysis_log_"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 44
    sget-object v0, Lcom/facebook/internal/instrument/InstrumentData$1;->$SwitchMap$com$facebook$internal$instrument$InstrumentData$Type:[I

    invoke-virtual {p0}, Lcom/facebook/internal/instrument/InstrumentData$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_20

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1a

    const/4 v1, 0x4

    if-eq v0, v1, :cond_17

    const-string v0, "Unknown"

    return-object v0

    :cond_17
    const-string v0, "ThreadCheck"

    return-object v0

    :cond_1a
    const-string v0, "CrashShield"

    return-object v0

    :cond_1d
    const-string v0, "CrashReport"

    return-object v0

    :cond_20
    const-string v0, "Analysis"

    return-object v0
.end method
