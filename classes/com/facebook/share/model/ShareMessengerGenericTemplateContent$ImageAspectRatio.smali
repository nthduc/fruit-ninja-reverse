.class public final enum Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;
.super Ljava/lang/Enum;
.source "ShareMessengerGenericTemplateContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageAspectRatio"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

.field public static final enum HORIZONTAL:Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

.field public static final enum SQUARE:Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 46
    new-instance v0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

    const/4 v1, 0x0

    const-string v2, "HORIZONTAL"

    invoke-direct {v0, v2, v1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;->HORIZONTAL:Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

    .line 48
    new-instance v0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

    const/4 v2, 0x1

    const-string v3, "SQUARE"

    invoke-direct {v0, v3, v2}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;->SQUARE:Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

    const/4 v0, 0x2

    .line 44
    new-array v0, v0, [Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

    sget-object v3, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;->HORIZONTAL:Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

    aput-object v3, v0, v1

    sget-object v1, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;->SQUARE:Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

    aput-object v1, v0, v2

    sput-object v0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;->$VALUES:[Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;
    .registers 2

    .line 44
    const-class v0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

    return-object p0
.end method

.method public static values()[Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;
    .registers 1

    .line 44
    sget-object v0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;->$VALUES:[Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

    invoke-virtual {v0}, [Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

    return-object v0
.end method
