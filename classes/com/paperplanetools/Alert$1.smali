.class final Lcom/paperplanetools/Alert$1;
.super Ljava/lang/Object;
.source "Alert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/paperplanetools/Alert;->show()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/paperplanetools/Alert$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 83
    # getter for: Lcom/paperplanetools/Alert;->alertBuilder:Lcom/paperplanetools/AlertBuilder;
    invoke-static {}, Lcom/paperplanetools/Alert;->access$200()Lcom/paperplanetools/AlertBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/paperplanetools/Alert$1;->val$activity:Landroid/app/Activity;

    # getter for: Lcom/paperplanetools/Alert;->unityGameObjectName:Ljava/lang/String;
    invoke-static {}, Lcom/paperplanetools/Alert;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AlertAndroid_OnButtonClick"

    invoke-virtual {v0, v1, v2, v3}, Lcom/paperplanetools/AlertBuilder;->create(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v0

    # setter for: Lcom/paperplanetools/Alert;->alertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/paperplanetools/Alert;->access$002(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 84
    # getter for: Lcom/paperplanetools/Alert;->alertDialog:Landroid/app/AlertDialog;
    invoke-static {}, Lcom/paperplanetools/Alert;->access$000()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/paperplanetools/Alert$1$1;

    invoke-direct {v1, p0}, Lcom/paperplanetools/Alert$1$1;-><init>(Lcom/paperplanetools/Alert$1;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 91
    # getter for: Lcom/paperplanetools/Alert;->alertDialog:Landroid/app/AlertDialog;
    invoke-static {}, Lcom/paperplanetools/Alert;->access$000()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/paperplanetools/Alert$1$2;

    invoke-direct {v1, p0}, Lcom/paperplanetools/Alert$1$2;-><init>(Lcom/paperplanetools/Alert$1;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 99
    # getter for: Lcom/paperplanetools/Alert;->alertDialog:Landroid/app/AlertDialog;
    invoke-static {}, Lcom/paperplanetools/Alert;->access$000()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
