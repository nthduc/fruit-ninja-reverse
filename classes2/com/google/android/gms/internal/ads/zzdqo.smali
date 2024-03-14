.class public final Lcom/google/android/gms/internal/ads/zzdqo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private zzhiv:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/android/gms/internal/ads/zzdqf;",
            "Lcom/google/android/gms/internal/ads/zzdqn<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzbqo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqo;->zzhiv:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdqf;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdpw;Lcom/google/android/gms/internal/ads/zzdqv;)Lcom/google/android/gms/internal/ads/zzdqn;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<AdT:",
            "Lcom/google/android/gms/internal/ads/zzbqo;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzdqf;",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzdpw;",
            "Lcom/google/android/gms/internal/ads/zzdqv<",
            "TAdT;>;)",
            "Lcom/google/android/gms/internal/ads/zzdqn<",
            "TAdT;>;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqo;->zzhiv:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdqn;

    if-nez v0, :cond_23

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdqc;

    .line 7
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzdqg;->zza(Lcom/google/android/gms/internal/ads/zzdqf;Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzdqg;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzdqc;-><init>(Lcom/google/android/gms/internal/ads/zzdqg;)V

    .line 8
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdqs;

    invoke-direct {p2, v0, p3, p4}, Lcom/google/android/gms/internal/ads/zzdqs;-><init>(Lcom/google/android/gms/internal/ads/zzdpz;Lcom/google/android/gms/internal/ads/zzdpw;Lcom/google/android/gms/internal/ads/zzdqv;)V

    .line 9
    new-instance p3, Lcom/google/android/gms/internal/ads/zzdqn;

    invoke-direct {p3, v0, p2}, Lcom/google/android/gms/internal/ads/zzdqn;-><init>(Lcom/google/android/gms/internal/ads/zzdpz;Lcom/google/android/gms/internal/ads/zzdqs;)V

    .line 10
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdqo;->zzhiv:Ljava/util/HashMap;

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_24

    :cond_23
    move-object p3, v0

    :goto_24
    return-object p3
.end method
