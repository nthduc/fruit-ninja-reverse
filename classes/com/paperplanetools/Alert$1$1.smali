.class Lcom/paperplanetools/Alert$1$1;
.super Ljava/lang/Object;
.source "Alert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/paperplanetools/Alert$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/paperplanetools/Alert$1;


# direct methods
.method constructor <init>(Lcom/paperplanetools/Alert$1;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/paperplanetools/Alert$1$1;->this$0:Lcom/paperplanetools/Alert$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4

    .line 87
    # getter for: Lcom/paperplanetools/Alert;->unityGameObjectName:Ljava/lang/String;
    invoke-static {}, Lcom/paperplanetools/Alert;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AlertAndroid_OnCancel"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
