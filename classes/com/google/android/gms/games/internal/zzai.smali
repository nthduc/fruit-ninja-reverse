.class final synthetic Lcom/google/android/gms/games/internal/zzai;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@20.0.1"

# interfaces
.implements Lcom/google/android/gms/games/internal/zzf$zzbc;


# static fields
.field static final zziv:Lcom/google/android/gms/games/internal/zzf$zzbc;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/games/internal/zzai;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/zzai;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/internal/zzai;->zziv:Lcom/google/android/gms/games/internal/zzf$zzbc;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;ILcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .registers 4

    check-cast p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;->onJoinedRoom(ILcom/google/android/gms/games/multiplayer/realtime/Room;)V

    return-void
.end method
