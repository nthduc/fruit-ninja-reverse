.class final synthetic Lcom/google/android/gms/internal/ads/zzdtu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field private final zzhmw:Lcom/google/android/gms/internal/ads/zzdtp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdtp;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdtu;->zzhmw:Lcom/google/android/gms/internal/ads/zzdtp;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtu;->zzhmw:Lcom/google/android/gms/internal/ads/zzdtp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdtp;->zzc(Ljava/lang/Exception;)V

    return-void
.end method
