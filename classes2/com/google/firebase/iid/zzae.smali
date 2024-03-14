.class final synthetic Lcom/google/firebase/iid/zzae;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@20.1.7"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/firebase/iid/zzac;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzac;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzae;->zza:Lcom/google/firebase/iid/zzac;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/iid/zzae;->zza:Lcom/google/firebase/iid/zzac;

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzac;->zzc()V

    return-void
.end method
