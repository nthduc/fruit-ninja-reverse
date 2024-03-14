.class final synthetic Lcom/google/firebase/iid/zzv;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@20.1.7"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# static fields
.field static final zza:Lcom/google/android/gms/tasks/Continuation;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/firebase/iid/zzv;

    invoke-direct {v0}, Lcom/google/firebase/iid/zzv;-><init>()V

    sput-object v0, Lcom/google/firebase/iid/zzv;->zza:Lcom/google/android/gms/tasks/Continuation;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method
