.class public final enum Lcom/chartboost/sdk/Chartboost$CBFramework;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Chartboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CBFramework"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/chartboost/sdk/Chartboost$CBFramework;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CBFrameworkAir:Lcom/chartboost/sdk/Chartboost$CBFramework;

.field public static final enum CBFrameworkCocoonJS:Lcom/chartboost/sdk/Chartboost$CBFramework;

.field public static final enum CBFrameworkCocos2dx:Lcom/chartboost/sdk/Chartboost$CBFramework;

.field public static final enum CBFrameworkCordova:Lcom/chartboost/sdk/Chartboost$CBFramework;

.field public static final enum CBFrameworkCorona:Lcom/chartboost/sdk/Chartboost$CBFramework;

.field public static final enum CBFrameworkGameSalad:Lcom/chartboost/sdk/Chartboost$CBFramework;

.field public static final enum CBFrameworkOther:Lcom/chartboost/sdk/Chartboost$CBFramework;

.field public static final enum CBFrameworkPrime31Unreal:Lcom/chartboost/sdk/Chartboost$CBFramework;

.field public static final enum CBFrameworkUnity:Lcom/chartboost/sdk/Chartboost$CBFramework;

.field public static final enum CBFrameworkWeeby:Lcom/chartboost/sdk/Chartboost$CBFramework;

.field private static final synthetic b:[Lcom/chartboost/sdk/Chartboost$CBFramework;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 1
    new-instance v0, Lcom/chartboost/sdk/Chartboost$CBFramework;

    const/4 v1, 0x0

    const-string v2, "CBFrameworkUnity"

    const-string v3, "Unity"

    invoke-direct {v0, v2, v1, v3}, Lcom/chartboost/sdk/Chartboost$CBFramework;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkUnity:Lcom/chartboost/sdk/Chartboost$CBFramework;

    .line 2
    new-instance v0, Lcom/chartboost/sdk/Chartboost$CBFramework;

    const/4 v2, 0x1

    const-string v3, "CBFrameworkCorona"

    const-string v4, "Corona"

    invoke-direct {v0, v3, v2, v4}, Lcom/chartboost/sdk/Chartboost$CBFramework;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkCorona:Lcom/chartboost/sdk/Chartboost$CBFramework;

    .line 3
    new-instance v0, Lcom/chartboost/sdk/Chartboost$CBFramework;

    const/4 v3, 0x2

    const-string v4, "CBFrameworkAir"

    const-string v5, "AIR"

    invoke-direct {v0, v4, v3, v5}, Lcom/chartboost/sdk/Chartboost$CBFramework;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkAir:Lcom/chartboost/sdk/Chartboost$CBFramework;

    .line 4
    new-instance v0, Lcom/chartboost/sdk/Chartboost$CBFramework;

    const/4 v4, 0x3

    const-string v5, "CBFrameworkGameSalad"

    const-string v6, "GameSalad"

    invoke-direct {v0, v5, v4, v6}, Lcom/chartboost/sdk/Chartboost$CBFramework;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkGameSalad:Lcom/chartboost/sdk/Chartboost$CBFramework;

    .line 5
    new-instance v0, Lcom/chartboost/sdk/Chartboost$CBFramework;

    const/4 v5, 0x4

    const-string v6, "CBFrameworkCordova"

    const-string v7, "Cordova"

    invoke-direct {v0, v6, v5, v7}, Lcom/chartboost/sdk/Chartboost$CBFramework;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkCordova:Lcom/chartboost/sdk/Chartboost$CBFramework;

    .line 6
    new-instance v0, Lcom/chartboost/sdk/Chartboost$CBFramework;

    const/4 v6, 0x5

    const-string v7, "CBFrameworkCocoonJS"

    const-string v8, "CocoonJS"

    invoke-direct {v0, v7, v6, v8}, Lcom/chartboost/sdk/Chartboost$CBFramework;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkCocoonJS:Lcom/chartboost/sdk/Chartboost$CBFramework;

    .line 7
    new-instance v0, Lcom/chartboost/sdk/Chartboost$CBFramework;

    const/4 v7, 0x6

    const-string v8, "CBFrameworkCocos2dx"

    const-string v9, "Cocos2dx"

    invoke-direct {v0, v8, v7, v9}, Lcom/chartboost/sdk/Chartboost$CBFramework;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkCocos2dx:Lcom/chartboost/sdk/Chartboost$CBFramework;

    .line 8
    new-instance v0, Lcom/chartboost/sdk/Chartboost$CBFramework;

    const/4 v8, 0x7

    const-string v9, "CBFrameworkPrime31Unreal"

    const-string v10, "Prime31Unreal"

    invoke-direct {v0, v9, v8, v10}, Lcom/chartboost/sdk/Chartboost$CBFramework;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkPrime31Unreal:Lcom/chartboost/sdk/Chartboost$CBFramework;

    .line 9
    new-instance v0, Lcom/chartboost/sdk/Chartboost$CBFramework;

    const/16 v9, 0x8

    const-string v10, "CBFrameworkWeeby"

    const-string v11, "Weeby"

    invoke-direct {v0, v10, v9, v11}, Lcom/chartboost/sdk/Chartboost$CBFramework;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkWeeby:Lcom/chartboost/sdk/Chartboost$CBFramework;

    .line 10
    new-instance v0, Lcom/chartboost/sdk/Chartboost$CBFramework;

    const/16 v10, 0x9

    const-string v11, "CBFrameworkOther"

    const-string v12, "Other"

    invoke-direct {v0, v11, v10, v12}, Lcom/chartboost/sdk/Chartboost$CBFramework;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkOther:Lcom/chartboost/sdk/Chartboost$CBFramework;

    const/16 v11, 0xa

    .line 11
    new-array v11, v11, [Lcom/chartboost/sdk/Chartboost$CBFramework;

    sget-object v12, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkUnity:Lcom/chartboost/sdk/Chartboost$CBFramework;

    aput-object v12, v11, v1

    sget-object v1, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkCorona:Lcom/chartboost/sdk/Chartboost$CBFramework;

    aput-object v1, v11, v2

    sget-object v1, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkAir:Lcom/chartboost/sdk/Chartboost$CBFramework;

    aput-object v1, v11, v3

    sget-object v1, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkGameSalad:Lcom/chartboost/sdk/Chartboost$CBFramework;

    aput-object v1, v11, v4

    sget-object v1, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkCordova:Lcom/chartboost/sdk/Chartboost$CBFramework;

    aput-object v1, v11, v5

    sget-object v1, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkCocoonJS:Lcom/chartboost/sdk/Chartboost$CBFramework;

    aput-object v1, v11, v6

    sget-object v1, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkCocos2dx:Lcom/chartboost/sdk/Chartboost$CBFramework;

    aput-object v1, v11, v7

    sget-object v1, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkPrime31Unreal:Lcom/chartboost/sdk/Chartboost$CBFramework;

    aput-object v1, v11, v8

    sget-object v1, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkWeeby:Lcom/chartboost/sdk/Chartboost$CBFramework;

    aput-object v1, v11, v9

    aput-object v0, v11, v10

    sput-object v11, Lcom/chartboost/sdk/Chartboost$CBFramework;->b:[Lcom/chartboost/sdk/Chartboost$CBFramework;

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
    iput-object p3, p0, Lcom/chartboost/sdk/Chartboost$CBFramework;->a:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/chartboost/sdk/Chartboost$CBFramework;
    .registers 2

    .line 1
    sget-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkUnity:Lcom/chartboost/sdk/Chartboost$CBFramework;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost$CBFramework;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2
    sget-object p0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkUnity:Lcom/chartboost/sdk/Chartboost$CBFramework;

    return-object p0

    .line 3
    :cond_f
    sget-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkCorona:Lcom/chartboost/sdk/Chartboost$CBFramework;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost$CBFramework;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 4
    sget-object p0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkCorona:Lcom/chartboost/sdk/Chartboost$CBFramework;

    return-object p0

    .line 5
    :cond_1e
    sget-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkAir:Lcom/chartboost/sdk/Chartboost$CBFramework;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost$CBFramework;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 6
    sget-object p0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkAir:Lcom/chartboost/sdk/Chartboost$CBFramework;

    return-object p0

    .line 7
    :cond_2d
    sget-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkGameSalad:Lcom/chartboost/sdk/Chartboost$CBFramework;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost$CBFramework;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 8
    sget-object p0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkGameSalad:Lcom/chartboost/sdk/Chartboost$CBFramework;

    return-object p0

    .line 9
    :cond_3c
    sget-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkCordova:Lcom/chartboost/sdk/Chartboost$CBFramework;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost$CBFramework;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 10
    sget-object p0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkCordova:Lcom/chartboost/sdk/Chartboost$CBFramework;

    return-object p0

    .line 11
    :cond_4b
    sget-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkCocoonJS:Lcom/chartboost/sdk/Chartboost$CBFramework;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost$CBFramework;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 12
    sget-object p0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkCocoonJS:Lcom/chartboost/sdk/Chartboost$CBFramework;

    return-object p0

    .line 13
    :cond_5a
    sget-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkCocos2dx:Lcom/chartboost/sdk/Chartboost$CBFramework;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost$CBFramework;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 14
    sget-object p0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkCocos2dx:Lcom/chartboost/sdk/Chartboost$CBFramework;

    return-object p0

    .line 15
    :cond_69
    sget-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkPrime31Unreal:Lcom/chartboost/sdk/Chartboost$CBFramework;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost$CBFramework;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 16
    sget-object p0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkPrime31Unreal:Lcom/chartboost/sdk/Chartboost$CBFramework;

    return-object p0

    .line 17
    :cond_78
    sget-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkWeeby:Lcom/chartboost/sdk/Chartboost$CBFramework;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost$CBFramework;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 18
    sget-object p0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkWeeby:Lcom/chartboost/sdk/Chartboost$CBFramework;

    return-object p0

    .line 19
    :cond_87
    sget-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkOther:Lcom/chartboost/sdk/Chartboost$CBFramework;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost$CBFramework;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_96

    .line 20
    sget-object p0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkOther:Lcom/chartboost/sdk/Chartboost$CBFramework;

    return-object p0

    .line 21
    :cond_96
    sget-object p0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkOther:Lcom/chartboost/sdk/Chartboost$CBFramework;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chartboost/sdk/Chartboost$CBFramework;
    .registers 2

    .line 1
    const-class v0, Lcom/chartboost/sdk/Chartboost$CBFramework;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/chartboost/sdk/Chartboost$CBFramework;

    return-object p0
.end method

.method public static values()[Lcom/chartboost/sdk/Chartboost$CBFramework;
    .registers 1

    .line 1
    sget-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->b:[Lcom/chartboost/sdk/Chartboost$CBFramework;

    invoke-virtual {v0}, [Lcom/chartboost/sdk/Chartboost$CBFramework;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chartboost/sdk/Chartboost$CBFramework;

    return-object v0
.end method


# virtual methods
.method public doesWrapperUseCustomBackgroundingBehavior()Z
    .registers 2

    .line 1
    sget-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkAir:Lcom/chartboost/sdk/Chartboost$CBFramework;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public doesWrapperUseCustomShouldDisplayBehavior()Z
    .registers 2

    .line 1
    sget-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkAir:Lcom/chartboost/sdk/Chartboost$CBFramework;

    if-eq p0, v0, :cond_b

    sget-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkCocos2dx:Lcom/chartboost/sdk/Chartboost$CBFramework;

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost$CBFramework;->a:Ljava/lang/String;

    return-object v0
.end method
