.class public final Lcom/google/android/gms/internal/ads/zzua$zzi$zza;
.super Lcom/google/android/gms/internal/ads/zzejz$zzb;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzell;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzua$zzi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzejz$zzb<",
        "Lcom/google/android/gms/internal/ads/zzua$zzi;",
        "Lcom/google/android/gms/internal/ads/zzua$zzi$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzell;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzua$zzi;->zzoc()Lcom/google/android/gms/internal/ads/zzua$zzi;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzejz$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzejz;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzuc;)V
    .registers 2

    .line 54
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzua$zzi$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzua$zza$zzb;)Lcom/google/android/gms/internal/ads/zzua$zzi$zza;
    .registers 3

    .line 31
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zziji:Z

    if-eqz v0, :cond_a

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgp()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zziji:Z

    .line 34
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzua$zzi$zza;->zzijh:Lcom/google/android/gms/internal/ads/zzejz;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzua$zzi;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgt()Lcom/google/android/gms/internal/ads/zzelj;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzejz;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzua$zza;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzua$zzi;->zza(Lcom/google/android/gms/internal/ads/zzua$zzi;Lcom/google/android/gms/internal/ads/zzua$zza;)V

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzua$zzae;)Lcom/google/android/gms/internal/ads/zzua$zzi$zza;
    .registers 3

    .line 43
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zziji:Z

    if-eqz v0, :cond_a

    .line 44
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgp()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zziji:Z

    .line 46
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzua$zzi$zza;->zzijh:Lcom/google/android/gms/internal/ads/zzejz;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzua$zzi;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzua$zzi;->zza(Lcom/google/android/gms/internal/ads/zzua$zzi;Lcom/google/android/gms/internal/ads/zzua$zzae;)V

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzua$zzb;)Lcom/google/android/gms/internal/ads/zzua$zzi$zza;
    .registers 3

    .line 49
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zziji:Z

    if-eqz v0, :cond_a

    .line 50
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgp()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zziji:Z

    .line 52
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzua$zzi$zza;->zzijh:Lcom/google/android/gms/internal/ads/zzejz;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzua$zzi;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzua$zzi;->zza(Lcom/google/android/gms/internal/ads/zzua$zzi;Lcom/google/android/gms/internal/ads/zzua$zzb;)V

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzua$zzg$zza;)Lcom/google/android/gms/internal/ads/zzua$zzi$zza;
    .registers 3

    .line 24
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zziji:Z

    if-eqz v0, :cond_a

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgp()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zziji:Z

    .line 27
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzua$zzi$zza;->zzijh:Lcom/google/android/gms/internal/ads/zzejz;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzua$zzi;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgt()Lcom/google/android/gms/internal/ads/zzelj;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzejz;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzua$zzg;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzua$zzi;->zza(Lcom/google/android/gms/internal/ads/zzua$zzi;Lcom/google/android/gms/internal/ads/zzua$zzg;)V

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzua$zzo;)Lcom/google/android/gms/internal/ads/zzua$zzi$zza;
    .registers 3

    .line 37
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zziji:Z

    if-eqz v0, :cond_a

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgp()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zziji:Z

    .line 40
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzua$zzi$zza;->zzijh:Lcom/google/android/gms/internal/ads/zzejz;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzua$zzi;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzua$zzi;->zza(Lcom/google/android/gms/internal/ads/zzua$zzi;Lcom/google/android/gms/internal/ads/zzua$zzo;)V

    return-object p0
.end method

.method public final zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzua$zzi$zza;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzua$zzi$zza;"
        }
    .end annotation

    .line 11
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zziji:Z

    if-eqz v0, :cond_a

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgp()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zziji:Z

    .line 14
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzua$zzi$zza;->zzijh:Lcom/google/android/gms/internal/ads/zzejz;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzua$zzi;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzua$zzi;->zza(Lcom/google/android/gms/internal/ads/zzua$zzi;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final zzcb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzua$zzi$zza;
    .registers 3

    .line 5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zziji:Z

    if-eqz v0, :cond_a

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgp()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zziji:Z

    .line 8
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzua$zzi$zza;->zzijh:Lcom/google/android/gms/internal/ads/zzejz;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzua$zzi;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzua$zzi;->zza(Lcom/google/android/gms/internal/ads/zzua$zzi;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zznw()Ljava/lang/String;
    .registers 2

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzua$zzi$zza;->zzijh:Lcom/google/android/gms/internal/ads/zzejz;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzua$zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzua$zzi;->zznw()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zznx()Lcom/google/android/gms/internal/ads/zzua$zzi$zza;
    .registers 2

    .line 17
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zziji:Z

    if-eqz v0, :cond_a

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgp()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zziji:Z

    .line 20
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzua$zzi$zza;->zzijh:Lcom/google/android/gms/internal/ads/zzejz;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzua$zzi;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzua$zzi;->zza(Lcom/google/android/gms/internal/ads/zzua$zzi;)V

    return-object p0
.end method

.method public final zzny()Lcom/google/android/gms/internal/ads/zzua$zzg;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzua$zzi$zza;->zzijh:Lcom/google/android/gms/internal/ads/zzejz;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzua$zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzua$zzi;->zzny()Lcom/google/android/gms/internal/ads/zzua$zzg;

    move-result-object v0

    return-object v0
.end method

.method public final zznz()Lcom/google/android/gms/internal/ads/zzua$zza;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzua$zzi$zza;->zzijh:Lcom/google/android/gms/internal/ads/zzejz;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzua$zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzua$zzi;->zznz()Lcom/google/android/gms/internal/ads/zzua$zza;

    move-result-object v0

    return-object v0
.end method
