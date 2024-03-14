.class Lcom/paperplanetools/AlertBuilder$1;
.super Ljava/lang/Object;
.source "AlertBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/paperplanetools/AlertBuilder;->create(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/paperplanetools/AlertBuilder;

.field final synthetic val$buttonCallback:Ljava/lang/String;

.field final synthetic val$unityGameObjectName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/paperplanetools/AlertBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 37
    iput-object p1, p0, Lcom/paperplanetools/AlertBuilder$1;->this$0:Lcom/paperplanetools/AlertBuilder;

    iput-object p2, p0, Lcom/paperplanetools/AlertBuilder$1;->val$unityGameObjectName:Ljava/lang/String;

    iput-object p3, p0, Lcom/paperplanetools/AlertBuilder$1;->val$buttonCallback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 39
    iget-object p1, p0, Lcom/paperplanetools/AlertBuilder$1;->val$unityGameObjectName:Ljava/lang/String;

    iget-object v0, p0, Lcom/paperplanetools/AlertBuilder$1;->val$buttonCallback:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
