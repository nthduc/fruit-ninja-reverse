.class final Lcom/google/android/gms/internal/ads/zzead;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KeyFormatProtoT::",
        "Lcom/google/android/gms/internal/ads/zzelj;",
        "KeyProtoT::",
        "Lcom/google/android/gms/internal/ads/zzelj;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zzhuc:Lcom/google/android/gms/internal/ads/zzeaf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeaf<",
            "TKeyFormatProtoT;TKeyProtoT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzeaf;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzeaf<",
            "TKeyFormatProtoT;TKeyProtoT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzead;->zzhuc:Lcom/google/android/gms/internal/ads/zzeaf;

    return-void
.end method


# virtual methods
.method final zzp(Lcom/google/android/gms/internal/ads/zzeip;)Lcom/google/android/gms/internal/ads/zzelj;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzeip;",
            ")TKeyProtoT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Lcom/google/android/gms/internal/ads/zzekj;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzead;->zzhuc:Lcom/google/android/gms/internal/ads/zzeaf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeaf;->zzq(Lcom/google/android/gms/internal/ads/zzeip;)Lcom/google/android/gms/internal/ads/zzelj;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzead;->zzhuc:Lcom/google/android/gms/internal/ads/zzeaf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeaf;->zzc(Lcom/google/android/gms/internal/ads/zzelj;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzead;->zzhuc:Lcom/google/android/gms/internal/ads/zzeaf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeaf;->zzd(Lcom/google/android/gms/internal/ads/zzelj;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzelj;

    return-object p1
.end method
