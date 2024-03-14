.class final Lcom/paperplanetools/Alert$2;
.super Ljava/lang/Object;
.source "Alert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/paperplanetools/Alert;->dismiss()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 114
    # getter for: Lcom/paperplanetools/Alert;->alertDialog:Landroid/app/AlertDialog;
    invoke-static {}, Lcom/paperplanetools/Alert;->access$000()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
