.class final Lcom/google/android/gms/internal/drive/zziz;
.super Ljava/lang/Object;


# instance fields
.field public zznk:I

.field public zznl:J

.field public zznm:Ljava/lang/Object;

.field public final zznn:Lcom/google/android/gms/internal/drive/zzjx;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzjx;->zzci()Lcom/google/android/gms/internal/drive/zzjx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/drive/zziz;->zznn:Lcom/google/android/gms/internal/drive/zzjx;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/drive/zzjx;)V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zziz;->zznn:Lcom/google/android/gms/internal/drive/zzjx;

    return-void

    .line 6
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method
