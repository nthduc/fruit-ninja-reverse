.class public final enum Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Chartboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CBPIDataUseConsent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final enum NO_BEHAVIORAL:Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

.field public static final enum UNKNOWN:Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

.field public static final enum YES_BEHAVIORAL:Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic e:[Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    new-instance v0, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    const/4 v3, -0x1

    const-string v4, "Unknown"

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->UNKNOWN:Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    .line 2
    new-instance v0, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    const/4 v2, 0x1

    const-string v3, "NO_BEHAVIORAL"

    const-string v4, "Non behavioral"

    invoke-direct {v0, v3, v2, v1, v4}, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->NO_BEHAVIORAL:Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    .line 3
    new-instance v0, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    const/4 v3, 0x2

    const-string v4, "YES_BEHAVIORAL"

    const-string v5, "Behavioral"

    invoke-direct {v0, v4, v3, v2, v5}, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->YES_BEHAVIORAL:Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    const/4 v4, 0x3

    .line 4
    new-array v4, v4, [Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    sget-object v5, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->UNKNOWN:Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    aput-object v5, v4, v1

    sget-object v5, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->NO_BEHAVIORAL:Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    aput-object v5, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->e:[Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->c:Ljava/util/Map;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->d:Ljava/util/List;

    .line 22
    invoke-static {}, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->values()[Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    move-result-object v0

    array-length v2, v0

    :goto_47
    if-ge v1, v2, :cond_60

    aget-object v3, v0, v1

    .line 23
    sget-object v4, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->c:Ljava/util/Map;

    iget v5, v3, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v4, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->d:Ljava/util/List;

    iget-object v3, v3, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->b:Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    :cond_60
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->a:I

    .line 3
    iput-object p4, p0, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->a:I

    return p0
.end method

.method public static getAsCharsArray()[Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->d:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static getConsentByName(Ljava/lang/String;)Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->NO_BEHAVIORAL:Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    iget-object v0, v0, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2
    sget-object p0, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->NO_BEHAVIORAL:Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    return-object p0

    .line 3
    :cond_d
    sget-object v0, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->YES_BEHAVIORAL:Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    iget-object v0, v0, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    .line 4
    sget-object p0, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->YES_BEHAVIORAL:Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    return-object p0

    .line 6
    :cond_1a
    sget-object p0, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->UNKNOWN:Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    return-object p0
.end method

.method public static valueOf(I)Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    sget-object v0, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->c:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    if-nez p0, :cond_10

    .line 3
    sget-object p0, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->UNKNOWN:Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    :cond_10
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;
    .registers 2

    .line 1
    const-class v0, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    return-object p0
.end method

.method public static values()[Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;
    .registers 1

    .line 1
    sget-object v0, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->e:[Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    invoke-virtual {v0}, [Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->a:I

    return v0
.end method
