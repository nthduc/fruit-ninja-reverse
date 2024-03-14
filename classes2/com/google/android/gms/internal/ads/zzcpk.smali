.class final Lcom/google/android/gms/internal/ads/zzcpk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdyr<",
        "Lcom/google/android/gms/internal/ads/zzdog;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzgjx:Lcom/google/android/gms/internal/ads/zzcpf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcpf;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpk;->zzgjx:Lcom/google/android/gms/internal/ads/zzcpf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .registers 5

    .line 10
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdog;

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcwk:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpk;->zzgjx:Lcom/google/android/gms/internal/ads/zzcpf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcpf;->zza(Lcom/google/android/gms/internal/ads/zzcpf;)Lcom/google/android/gms/internal/ads/zzcsc;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzdog;->zzhew:Lcom/google/android/gms/internal/ads/zzdoe;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdoe;->zzeou:Lcom/google/android/gms/internal/ads/zzdnw;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzdnw;->responseCode:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcsc;->zzdz(I)V

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpk;->zzgjx:Lcom/google/android/gms/internal/ads/zzcpf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcpf;->zza(Lcom/google/android/gms/internal/ads/zzcpf;)Lcom/google/android/gms/internal/ads/zzcsc;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdog;->zzhew:Lcom/google/android/gms/internal/ads/zzdoe;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdoe;->zzeou:Lcom/google/android/gms/internal/ads/zzdnw;

    iget-wide v1, p1, Lcom/google/android/gms/internal/ads/zzdnw;->zzglu:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcsc;->zzeo(J)V

    :cond_32
    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .registers 4

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcwk:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcpf;->zzapx()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpk;->zzgjx:Lcom/google/android/gms/internal/ads/zzcpf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcpf;->zza(Lcom/google/android/gms/internal/ads/zzcpf;)Lcom/google/android/gms/internal/ads/zzcsc;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcsc;->zzdz(I)V

    :cond_36
    return-void
.end method
