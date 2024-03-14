.class final Lcom/google/android/gms/internal/ads/zzazx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field private final synthetic zzecb:Ljava/lang/String;

.field private final synthetic zzecc:Z

.field private final synthetic zzecd:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzazu;Landroid/content/Context;Ljava/lang/String;ZZ)V
    .registers 6

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzazx;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzazx;->zzecb:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzazx;->zzecc:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzazx;->zzecd:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazx;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazx;->zzecb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 4
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzazx;->zzecc:Z

    if-eqz v1, :cond_16

    const-string v1, "Error"

    .line 5
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1b

    :cond_16
    const-string v1, "Info"

    .line 6
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 7
    :goto_1b
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzazx;->zzecd:Z

    const/4 v2, 0x0

    const-string v3, "Dismiss"

    if-eqz v1, :cond_26

    .line 8
    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_33

    .line 9
    :cond_26
    new-instance v1, Lcom/google/android/gms/internal/ads/zzazw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzazw;-><init>(Lcom/google/android/gms/internal/ads/zzazx;)V

    const-string v4, "Learn More"

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 10
    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 11
    :goto_33
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
