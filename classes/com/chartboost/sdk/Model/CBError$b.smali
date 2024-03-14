.class public final enum Lcom/chartboost/sdk/Model/CBError$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Model/CBError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/chartboost/sdk/Model/CBError$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/chartboost/sdk/Model/CBError$b;

.field public static final enum b:Lcom/chartboost/sdk/Model/CBError$b;

.field public static final enum c:Lcom/chartboost/sdk/Model/CBError$b;

.field public static final enum d:Lcom/chartboost/sdk/Model/CBError$b;

.field public static final enum e:Lcom/chartboost/sdk/Model/CBError$b;

.field public static final enum f:Lcom/chartboost/sdk/Model/CBError$b;

.field public static final enum g:Lcom/chartboost/sdk/Model/CBError$b;

.field private static final synthetic h:[Lcom/chartboost/sdk/Model/CBError$b;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 1
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$b;

    const/4 v1, 0x0

    const-string v2, "MISCELLANEOUS"

    invoke-direct {v0, v2, v1}, Lcom/chartboost/sdk/Model/CBError$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$b;->a:Lcom/chartboost/sdk/Model/CBError$b;

    .line 2
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$b;

    const/4 v2, 0x1

    const-string v3, "INTERNET_UNAVAILABLE"

    invoke-direct {v0, v3, v2}, Lcom/chartboost/sdk/Model/CBError$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$b;->b:Lcom/chartboost/sdk/Model/CBError$b;

    .line 3
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$b;

    const/4 v3, 0x2

    const-string v4, "INVALID_RESPONSE"

    invoke-direct {v0, v4, v3}, Lcom/chartboost/sdk/Model/CBError$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$b;->c:Lcom/chartboost/sdk/Model/CBError$b;

    .line 4
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$b;

    const/4 v4, 0x3

    const-string v5, "UNEXPECTED_RESPONSE"

    invoke-direct {v0, v5, v4}, Lcom/chartboost/sdk/Model/CBError$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$b;->d:Lcom/chartboost/sdk/Model/CBError$b;

    .line 5
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$b;

    const/4 v5, 0x4

    const-string v6, "NETWORK_FAILURE"

    invoke-direct {v0, v6, v5}, Lcom/chartboost/sdk/Model/CBError$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$b;->e:Lcom/chartboost/sdk/Model/CBError$b;

    .line 6
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$b;

    const/4 v6, 0x5

    const-string v7, "PUBLIC_KEY_MISSING"

    invoke-direct {v0, v7, v6}, Lcom/chartboost/sdk/Model/CBError$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$b;->f:Lcom/chartboost/sdk/Model/CBError$b;

    .line 7
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$b;

    const/4 v7, 0x6

    const-string v8, "HTTP_NOT_FOUND"

    invoke-direct {v0, v8, v7}, Lcom/chartboost/sdk/Model/CBError$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$b;->g:Lcom/chartboost/sdk/Model/CBError$b;

    const/4 v8, 0x7

    .line 8
    new-array v8, v8, [Lcom/chartboost/sdk/Model/CBError$b;

    sget-object v9, Lcom/chartboost/sdk/Model/CBError$b;->a:Lcom/chartboost/sdk/Model/CBError$b;

    aput-object v9, v8, v1

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$b;->b:Lcom/chartboost/sdk/Model/CBError$b;

    aput-object v1, v8, v2

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$b;->c:Lcom/chartboost/sdk/Model/CBError$b;

    aput-object v1, v8, v3

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$b;->d:Lcom/chartboost/sdk/Model/CBError$b;

    aput-object v1, v8, v4

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$b;->e:Lcom/chartboost/sdk/Model/CBError$b;

    aput-object v1, v8, v5

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$b;->f:Lcom/chartboost/sdk/Model/CBError$b;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lcom/chartboost/sdk/Model/CBError$b;->h:[Lcom/chartboost/sdk/Model/CBError$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/chartboost/sdk/Model/CBError$b;
    .registers 2

    .line 1
    const-class v0, Lcom/chartboost/sdk/Model/CBError$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/chartboost/sdk/Model/CBError$b;

    return-object p0
.end method

.method public static values()[Lcom/chartboost/sdk/Model/CBError$b;
    .registers 1

    .line 1
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$b;->h:[Lcom/chartboost/sdk/Model/CBError$b;

    invoke-virtual {v0}, [Lcom/chartboost/sdk/Model/CBError$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chartboost/sdk/Model/CBError$b;

    return-object v0
.end method
