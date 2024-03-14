.class Lcom/paperplanetools/Alert$1$2;
.super Ljava/lang/Object;
.source "Alert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    .line 91
    iput-object p1, p0, Lcom/paperplanetools/Alert$1$2;->this$0:Lcom/paperplanetools/Alert$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4

    const/4 p1, 0x0

    .line 94
    # setter for: Lcom/paperplanetools/Alert;->alertBuilder:Lcom/paperplanetools/AlertBuilder;
    invoke-static {p1}, Lcom/paperplanetools/Alert;->access$202(Lcom/paperplanetools/AlertBuilder;)Lcom/paperplanetools/AlertBuilder;

    .line 95
    # setter for: Lcom/paperplanetools/Alert;->alertDialog:Landroid/app/AlertDialog;
    invoke-static {p1}, Lcom/paperplanetools/Alert;->access$002(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 96
    # getter for: Lcom/paperplanetools/Alert;->unityGameObjectName:Ljava/lang/String;
    invoke-static {}, Lcom/paperplanetools/Alert;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AlertAndroid_OnDismiss"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
