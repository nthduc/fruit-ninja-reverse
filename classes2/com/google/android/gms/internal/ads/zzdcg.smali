.class public final Lcom/google/android/gms/internal/ads/zzdcg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdgu<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzgvn:Landroid/os/Bundle;


# direct methods
.method private constructor <init>(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdcg;->zzgvn:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzdcj;)V
    .registers 3

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdcg;-><init>(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzs(Ljava/lang/Object;)V
    .registers 4

    .line 4
    check-cast p1, Landroid/os/Bundle;

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdcg;->zzgvn:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdcg;->zzgvn:Landroid/os/Bundle;

    const-string v1, "installed_adapter_data"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_11
    return-void
.end method
