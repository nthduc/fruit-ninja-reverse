.class final Lcom/google/android/gms/internal/ads/zzebc;
.super Lcom/google/android/gms/internal/ads/zzeaf;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzeaf<",
        "Lcom/google/android/gms/internal/ads/zzedh;",
        "Lcom/google/android/gms/internal/ads/zzede;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzhvp:Lcom/google/android/gms/internal/ads/zzebb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzebb;Ljava/lang/Class;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzebc;->zzhvp:Lcom/google/android/gms/internal/ads/zzebb;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzeaf;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzc(Lcom/google/android/gms/internal/ads/zzelj;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 16
    check-cast p1, Lcom/google/android/gms/internal/ads/zzedh;

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/ads/zzebf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzebf;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeag;->zzayr()Lcom/google/android/gms/internal/ads/zzeaf;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzedh;->zzazp()Lcom/google/android/gms/internal/ads/zzedl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzeaf;->zzc(Lcom/google/android/gms/internal/ads/zzelj;)V

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/ads/zzecp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzecp;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeag;->zzayr()Lcom/google/android/gms/internal/ads/zzeaf;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzedh;->zzazq()Lcom/google/android/gms/internal/ads/zzeex;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzeaf;->zzc(Lcom/google/android/gms/internal/ads/zzelj;)V

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzedh;->zzazp()Lcom/google/android/gms/internal/ads/zzedl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzedl;->getKeySize()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeht;->zzfp(I)V

    return-void
.end method

.method public final synthetic zzd(Lcom/google/android/gms/internal/ads/zzelj;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzedh;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzebf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzebf;-><init>()V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeag;->zzayr()Lcom/google/android/gms/internal/ads/zzeaf;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzedh;->zzazp()Lcom/google/android/gms/internal/ads/zzedl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzeaf;->zzd(Lcom/google/android/gms/internal/ads/zzelj;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzedi;

    .line 5
    new-instance v1, Lcom/google/android/gms/internal/ads/zzecp;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzecp;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeag;->zzayr()Lcom/google/android/gms/internal/ads/zzeaf;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzedh;->zzazq()Lcom/google/android/gms/internal/ads/zzeex;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzeaf;->zzd(Lcom/google/android/gms/internal/ads/zzelj;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeet;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzede;->zzazn()Lcom/google/android/gms/internal/ads/zzede$zza;

    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzede$zza;->zzb(Lcom/google/android/gms/internal/ads/zzedi;)Lcom/google/android/gms/internal/ads/zzede$zza;

    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzede$zza;->zzb(Lcom/google/android/gms/internal/ads/zzeet;)Lcom/google/android/gms/internal/ads/zzede$zza;

    move-result-object p1

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzede$zza;->zzet(I)Lcom/google/android/gms/internal/ads/zzede$zza;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgt()Lcom/google/android/gms/internal/ads/zzelj;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzejz;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzede;

    return-object p1
.end method

.method public final synthetic zzq(Lcom/google/android/gms/internal/ads/zzeip;)Lcom/google/android/gms/internal/ads/zzelj;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzekj;
        }
    .end annotation

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzejm;->zzbft()Lcom/google/android/gms/internal/ads/zzejm;

    move-result-object v0

    .line 14
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzedh;->zzf(Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzedh;

    move-result-object p1

    return-object p1
.end method
