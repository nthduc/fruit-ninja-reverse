.class public final Lcom/google/android/gms/internal/ads/zzefb$zzb;
.super Lcom/google/android/gms/internal/ads/zzejz$zzb;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzell;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzefb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzejz$zzb<",
        "Lcom/google/android/gms/internal/ads/zzefb;",
        "Lcom/google/android/gms/internal/ads/zzefb$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzell;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzefb;->zzbby()Lcom/google/android/gms/internal/ads/zzefb;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzejz$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzejz;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzefa;)V
    .registers 2

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzefb$zzb;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzaf(Lcom/google/android/gms/internal/ads/zzeip;)Lcom/google/android/gms/internal/ads/zzefb$zzb;
    .registers 3

    .line 10
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zziji:Z

    if-eqz v0, :cond_a

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgp()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zziji:Z

    .line 13
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefb$zzb;->zzijh:Lcom/google/android/gms/internal/ads/zzejz;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzefb;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzefb;->zza(Lcom/google/android/gms/internal/ads/zzefb;Lcom/google/android/gms/internal/ads/zzeip;)V

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzefb$zza;)Lcom/google/android/gms/internal/ads/zzefb$zzb;
    .registers 3

    .line 16
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zziji:Z

    if-eqz v0, :cond_a

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgp()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zziji:Z

    .line 19
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefb$zzb;->zzijh:Lcom/google/android/gms/internal/ads/zzejz;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzefb;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzefb;->zza(Lcom/google/android/gms/internal/ads/zzefb;Lcom/google/android/gms/internal/ads/zzefb$zza;)V

    return-object p0
.end method

.method public final zzhq(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzefb$zzb;
    .registers 3

    .line 4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zziji:Z

    if-eqz v0, :cond_a

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgp()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zziji:Z

    .line 7
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefb$zzb;->zzijh:Lcom/google/android/gms/internal/ads/zzejz;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzefb;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzefb;->zza(Lcom/google/android/gms/internal/ads/zzefb;Ljava/lang/String;)V

    return-object p0
.end method
