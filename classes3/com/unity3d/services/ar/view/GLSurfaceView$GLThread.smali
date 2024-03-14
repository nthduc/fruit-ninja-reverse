.class Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;
.super Ljava/lang/Thread;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/ar/view/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GLThread"
.end annotation


# instance fields
.field private mDidDraw:Z

.field private mEglHelper:Lcom/unity3d/services/ar/view/GLSurfaceView$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mFinishDrawingRunnable:Ljava/lang/Runnable;

.field private mFinishedCreatingEglSurface:Z

.field private mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/unity3d/services/ar/view/GLSurfaceView;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRequestPaused:Z

.field private mRequestRender:Z

.field private mRequestSwap:Z

.field private mShouldExit:Z

.field private mShouldReleaseEglContext:Z

.field private mSizeChanged:Z

.field private mSurfaceIsBad:Z

.field private mWaitingForSurface:Z

.field private mWantRenderNotification:Z

.field private mWidth:I


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/unity3d/services/ar/view/GLSurfaceView;",
            ">;)V"
        }
    .end annotation

    .line 1259
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1882
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 1883
    iput-boolean v0, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mSizeChanged:Z

    const/4 v1, 0x0

    .line 1884
    iput-object v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    .line 1260
    iput v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mWidth:I

    .line 1261
    iput v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mHeight:I

    .line 1262
    iput-boolean v0, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1263
    iput v0, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mRenderMode:I

    .line 1264
    iput-boolean v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    .line 1265
    iput-object p1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$1102(Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;Z)Z
    .registers 2

    .line 1257
    iput-boolean p1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mExited:Z

    return p1
.end method

.method private guardedRun()V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1307
    new-instance v0, Lcom/unity3d/services/ar/view/GLSurfaceView$EglHelper;

    iget-object v2, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Lcom/unity3d/services/ar/view/GLSurfaceView$EglHelper;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mEglHelper:Lcom/unity3d/services/ar/view/GLSurfaceView$EglHelper;

    const/4 v0, 0x0

    .line 1308
    iput-boolean v0, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1309
    iput-boolean v0, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1310
    iput-boolean v0, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 1329
    :goto_22
    :try_start_22
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->sGLThreadManager:Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v18

    monitor-enter v18
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_26c

    .line 1331
    :goto_27
    :try_start_27
    iget-boolean v2, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mShouldExit:Z

    if-eqz v2, :cond_3c

    .line 1332
    monitor-exit v18
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_269

    .line 1647
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->sGLThreadManager:Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1648
    :try_start_31
    invoke-direct/range {p0 .. p0}, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1649
    invoke-direct/range {p0 .. p0}, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1650
    monitor-exit v2

    return-void

    :catchall_39
    move-exception v0

    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_31 .. :try_end_3b} :catchall_39

    throw v0

    .line 1335
    :cond_3c
    :try_start_3c
    iget-object v2, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_50

    .line 1336
    iget-object v2, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    move-object v14, v2

    const/4 v3, 0x0

    goto/16 :goto_14a

    .line 1342
    :cond_50
    iget-boolean v2, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mPaused:Z

    iget-boolean v3, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mRequestPaused:Z

    if-eq v2, v3, :cond_64

    .line 1343
    iget-boolean v2, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mRequestPaused:Z

    .line 1344
    iget-boolean v3, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mRequestPaused:Z

    iput-boolean v3, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mPaused:Z

    .line 1345
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->sGLThreadManager:Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    goto :goto_65

    :cond_64
    const/4 v2, 0x0

    .line 1352
    :goto_65
    iget-boolean v3, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    if-eqz v3, :cond_72

    .line 1356
    invoke-direct/range {p0 .. p0}, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1357
    invoke-direct/range {p0 .. p0}, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1358
    iput-boolean v0, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    const/4 v6, 0x1

    :cond_72
    if-eqz v4, :cond_7b

    .line 1364
    invoke-direct/range {p0 .. p0}, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1365
    invoke-direct/range {p0 .. p0}, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->stopEglContextLocked()V

    const/4 v4, 0x0

    :cond_7b
    if-eqz v2, :cond_84

    .line 1370
    iget-boolean v3, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v3, :cond_84

    .line 1374
    invoke-direct/range {p0 .. p0}, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    :cond_84
    if-eqz v2, :cond_9f

    .line 1378
    iget-boolean v2, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v2, :cond_9f

    .line 1379
    iget-object v2, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unity3d/services/ar/view/GLSurfaceView;

    if-nez v2, :cond_96

    const/4 v2, 0x0

    goto :goto_9a

    .line 1381
    :cond_96
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->mPreserveEGLContextOnPause:Z
    invoke-static {v2}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$900(Lcom/unity3d/services/ar/view/GLSurfaceView;)Z

    move-result v2

    :goto_9a
    if-nez v2, :cond_9f

    .line 1383
    invoke-direct/range {p0 .. p0}, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1391
    :cond_9f
    iget-boolean v2, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mHasSurface:Z

    if-nez v2, :cond_ba

    iget-boolean v2, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v2, :cond_ba

    .line 1395
    iget-boolean v2, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v2, :cond_ae

    .line 1396
    invoke-direct/range {p0 .. p0}, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    :cond_ae
    const/4 v2, 0x1

    .line 1398
    iput-boolean v2, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1399
    iput-boolean v0, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    .line 1400
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->sGLThreadManager:Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1404
    :cond_ba
    iget-boolean v2, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v2, :cond_cb

    iget-boolean v2, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v2, :cond_cb

    .line 1408
    iput-boolean v0, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1409
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->sGLThreadManager:Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    :cond_cb
    if-eqz v5, :cond_da

    .line 1416
    iput-boolean v0, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    const/4 v2, 0x1

    .line 1418
    iput-boolean v2, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1419
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->sGLThreadManager:Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    const/4 v5, 0x0

    .line 1422
    :cond_da
    iget-object v2, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_e4

    .line 1423
    iget-object v2, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    const/4 v3, 0x0

    .line 1424
    iput-object v3, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    goto :goto_e6

    :cond_e4
    const/4 v3, 0x0

    move-object v2, v7

    .line 1428
    :goto_e6
    invoke-direct/range {p0 .. p0}, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->readyToDraw()Z

    move-result v7

    if-eqz v7, :cond_24f

    .line 1431
    iget-boolean v7, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mHaveEglContext:Z
    :try_end_ee
    .catchall {:try_start_3c .. :try_end_ee} :catchall_269

    if-nez v7, :cond_10e

    if-eqz v6, :cond_f4

    const/4 v6, 0x0

    goto :goto_10e

    .line 1436
    :cond_f4
    :try_start_f4
    iget-object v7, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mEglHelper:Lcom/unity3d/services/ar/view/GLSurfaceView$EglHelper;

    invoke-virtual {v7}, Lcom/unity3d/services/ar/view/GLSurfaceView$EglHelper;->start()V
    :try_end_f9
    .catch Ljava/lang/RuntimeException; {:try_start_f4 .. :try_end_f9} :catch_105
    .catchall {:try_start_f4 .. :try_end_f9} :catchall_269

    const/4 v7, 0x1

    .line 1441
    :try_start_fa
    iput-boolean v7, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1444
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->sGLThreadManager:Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    const/4 v15, 0x1

    goto :goto_10e

    :catch_105
    move-exception v0

    .line 1438
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->sGLThreadManager:Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;->releaseEglContextLocked(Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;)V

    .line 1439
    throw v0

    .line 1448
    :cond_10e
    :goto_10e
    iget-boolean v7, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v7, :cond_11e

    iget-boolean v7, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-nez v7, :cond_11e

    const/4 v7, 0x1

    .line 1449
    iput-boolean v7, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    const/4 v8, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x1

    .line 1455
    :cond_11e
    iget-boolean v7, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v7, :cond_24d

    .line 1456
    iget-boolean v7, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mSizeChanged:Z

    if-eqz v7, :cond_132

    .line 1458
    iget v12, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mWidth:I

    .line 1459
    iget v13, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mHeight:I

    const/4 v7, 0x1

    .line 1460
    iput-boolean v7, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    .line 1470
    iput-boolean v0, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mSizeChanged:Z

    const/4 v8, 0x1

    const/16 v16, 0x1

    .line 1472
    :cond_132
    iput-boolean v0, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1473
    iget-boolean v7, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mRequestSwap:Z

    if-eqz v7, :cond_13b

    .line 1474
    iput-boolean v0, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mRequestSwap:Z

    const/4 v11, 0x1

    .line 1477
    :cond_13b
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->sGLThreadManager:Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 1478
    iget-boolean v7, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    if-eqz v7, :cond_149

    move-object v7, v2

    const/4 v10, 0x1

    goto :goto_14a

    :cond_149
    move-object v7, v2

    .line 1508
    :goto_14a
    monitor-exit v18
    :try_end_14b
    .catchall {:try_start_fa .. :try_end_14b} :catchall_269

    if-eqz v14, :cond_153

    .line 1511
    :try_start_14d
    invoke-interface {v14}, Ljava/lang/Runnable;->run()V

    move-object v14, v3

    goto/16 :goto_22

    :cond_153
    if-eqz v16, :cond_18a

    .line 1520
    iget-object v2, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mEglHelper:Lcom/unity3d/services/ar/view/GLSurfaceView$EglHelper;

    invoke-virtual {v2}, Lcom/unity3d/services/ar/view/GLSurfaceView$EglHelper;->createSurface()Z

    move-result v2

    if-eqz v2, :cond_173

    .line 1521
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->sGLThreadManager:Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2
    :try_end_162
    .catchall {:try_start_14d .. :try_end_162} :catchall_26c

    const/4 v3, 0x1

    .line 1522
    :try_start_163
    iput-boolean v3, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1523
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->sGLThreadManager:Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1524
    monitor-exit v2

    const/16 v16, 0x0

    goto :goto_18a

    :catchall_170
    move-exception v0

    monitor-exit v2
    :try_end_172
    .catchall {:try_start_163 .. :try_end_172} :catchall_170

    :try_start_172
    throw v0

    .line 1526
    :cond_173
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->sGLThreadManager:Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2
    :try_end_178
    .catchall {:try_start_172 .. :try_end_178} :catchall_26c

    const/4 v3, 0x1

    .line 1527
    :try_start_179
    iput-boolean v3, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1528
    iput-boolean v3, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    .line 1529
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->sGLThreadManager:Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1530
    monitor-exit v2

    goto/16 :goto_22

    :catchall_187
    move-exception v0

    monitor-exit v2
    :try_end_189
    .catchall {:try_start_179 .. :try_end_189} :catchall_187

    :try_start_189
    throw v0

    :cond_18a
    :goto_18a
    const/16 v3, 0x3000

    if-eqz v11, :cond_1bf

    .line 1536
    iget-boolean v2, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mDidDraw:Z

    if-eqz v2, :cond_1bf

    .line 1537
    iput-boolean v0, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mDidDraw:Z

    .line 1539
    iget-object v2, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mEglHelper:Lcom/unity3d/services/ar/view/GLSurfaceView$EglHelper;

    invoke-virtual {v2}, Lcom/unity3d/services/ar/view/GLSurfaceView$EglHelper;->swap()I

    move-result v2

    if-eq v2, v3, :cond_1bc

    const/16 v3, 0x300e

    if-eq v2, v3, :cond_1bb

    const-string v3, "GLThread"

    const-string v11, "eglSwapBuffers"

    .line 1554
    invoke-static {v3, v11, v2}, Lcom/unity3d/services/ar/view/GLSurfaceView$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1556
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->sGLThreadManager:Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2
    :try_end_1ac
    .catchall {:try_start_189 .. :try_end_1ac} :catchall_26c

    const/4 v3, 0x1

    .line 1557
    :try_start_1ad
    iput-boolean v3, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    .line 1558
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->sGLThreadManager:Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1559
    monitor-exit v2

    goto :goto_1bc

    :catchall_1b8
    move-exception v0

    monitor-exit v2
    :try_end_1ba
    .catchall {:try_start_1ad .. :try_end_1ba} :catchall_1b8

    :try_start_1ba
    throw v0

    :cond_1bb
    const/4 v4, 0x1

    :cond_1bc
    :goto_1bc
    const/4 v11, 0x0

    goto/16 :goto_22

    :cond_1bf
    if-eqz v17, :cond_1cc

    .line 1567
    iget-object v2, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mEglHelper:Lcom/unity3d/services/ar/view/GLSurfaceView$EglHelper;

    invoke-virtual {v2}, Lcom/unity3d/services/ar/view/GLSurfaceView$EglHelper;->createGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/opengles/GL10;

    move-object v9, v2

    const/16 v17, 0x0

    :cond_1cc
    if-eqz v15, :cond_1e4

    .line 1576
    iget-object v2, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unity3d/services/ar/view/GLSurfaceView;

    if-eqz v2, :cond_1e3

    .line 1578
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->mRenderer:Lcom/unity3d/services/ar/view/GLSurfaceView$Renderer;
    invoke-static {v2}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$1000(Lcom/unity3d/services/ar/view/GLSurfaceView;)Lcom/unity3d/services/ar/view/GLSurfaceView$Renderer;

    move-result-object v2

    iget-object v15, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mEglHelper:Lcom/unity3d/services/ar/view/GLSurfaceView$EglHelper;

    iget-object v15, v15, Lcom/unity3d/services/ar/view/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v2, v9, v15}, Lcom/unity3d/services/ar/view/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    :cond_1e3
    const/4 v15, 0x0

    :cond_1e4
    if-eqz v8, :cond_1f8

    .line 1587
    iget-object v2, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unity3d/services/ar/view/GLSurfaceView;

    if-eqz v2, :cond_1f7

    .line 1589
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->mRenderer:Lcom/unity3d/services/ar/view/GLSurfaceView$Renderer;
    invoke-static {v2}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$1000(Lcom/unity3d/services/ar/view/GLSurfaceView;)Lcom/unity3d/services/ar/view/GLSurfaceView$Renderer;

    move-result-object v2

    invoke-interface {v2, v9, v12, v13}, Lcom/unity3d/services/ar/view/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    :cond_1f7
    const/4 v8, 0x0

    .line 1599
    :cond_1f8
    iget-object v2, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unity3d/services/ar/view/GLSurfaceView;

    if-eqz v2, :cond_212

    .line 1601
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->mRenderer:Lcom/unity3d/services/ar/view/GLSurfaceView$Renderer;
    invoke-static {v2}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$1000(Lcom/unity3d/services/ar/view/GLSurfaceView;)Lcom/unity3d/services/ar/view/GLSurfaceView$Renderer;

    move-result-object v2

    invoke-interface {v2, v9}, Lcom/unity3d/services/ar/view/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    const/4 v2, 0x1

    .line 1602
    iput-boolean v2, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mDidDraw:Z

    if-eqz v7, :cond_212

    .line 1604
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    const/4 v7, 0x0

    .line 1610
    :cond_212
    iget v2, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mRenderMode:I

    const/4 v0, 0x1

    if-ne v2, v0, :cond_243

    .line 1612
    iget-object v0, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mEglHelper:Lcom/unity3d/services/ar/view/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Lcom/unity3d/services/ar/view/GLSurfaceView$EglHelper;->swap()I

    move-result v0

    if-eq v0, v3, :cond_241

    const/16 v2, 0x300e

    if-eq v0, v2, :cond_23e

    const-string v2, "GLThread"

    const-string v3, "eglSwapBuffers"

    .line 1627
    invoke-static {v2, v3, v0}, Lcom/unity3d/services/ar/view/GLSurfaceView$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1629
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->sGLThreadManager:Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2
    :try_end_22f
    .catchall {:try_start_1ba .. :try_end_22f} :catchall_26c

    const/4 v0, 0x1

    .line 1630
    :try_start_230
    iput-boolean v0, v1, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    .line 1631
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->sGLThreadManager:Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1632
    monitor-exit v2

    goto :goto_242

    :catchall_23b
    move-exception v0

    monitor-exit v2
    :try_end_23d
    .catchall {:try_start_230 .. :try_end_23d} :catchall_23b

    :try_start_23d
    throw v0
    :try_end_23e
    .catchall {:try_start_23d .. :try_end_23e} :catchall_26c

    :cond_23e
    const/4 v0, 0x1

    const/4 v4, 0x1

    goto :goto_242

    :cond_241
    const/4 v0, 0x1

    :goto_242
    const/4 v11, 0x0

    :cond_243
    if-eqz v10, :cond_24a

    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v10, 0x0

    goto/16 :goto_22

    :cond_24a
    const/4 v0, 0x0

    goto/16 :goto_22

    :cond_24d
    const/4 v0, 0x1

    goto :goto_25e

    :cond_24f
    const/4 v0, 0x1

    if-eqz v2, :cond_25e

    :try_start_252
    const-string v3, "GLSurfaceView"

    const-string v7, "Warning, !readyToDraw() but waiting for draw finished! Early reporting draw finished."

    .line 1485
    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    const/4 v7, 0x0

    goto :goto_25f

    :cond_25e
    :goto_25e
    move-object v7, v2

    .line 1506
    :goto_25f
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->sGLThreadManager:Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    const/4 v0, 0x0

    goto/16 :goto_27

    :catchall_269
    move-exception v0

    .line 1508
    monitor-exit v18
    :try_end_26b
    .catchall {:try_start_252 .. :try_end_26b} :catchall_269

    :try_start_26b
    throw v0
    :try_end_26c
    .catchall {:try_start_26b .. :try_end_26c} :catchall_26c

    :catchall_26c
    move-exception v0

    .line 1647
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->sGLThreadManager:Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1648
    :try_start_272
    invoke-direct/range {p0 .. p0}, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1649
    invoke-direct/range {p0 .. p0}, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1650
    monitor-exit v2
    :try_end_279
    .catchall {:try_start_272 .. :try_end_279} :catchall_27a

    throw v0

    :catchall_27a
    move-exception v0

    :try_start_27b
    monitor-exit v2
    :try_end_27c
    .catchall {:try_start_27b .. :try_end_27c} :catchall_27a

    throw v0

    return-void
.end method

.method private readyToDraw()Z
    .registers 3

    .line 1659
    iget-boolean v0, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mPaused:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    if-nez v0, :cond_1e

    iget v0, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mWidth:I

    if-lez v0, :cond_1e

    iget v0, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mHeight:I

    if-lez v0, :cond_1e

    iget-boolean v0, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mRequestRender:Z

    if-nez v0, :cond_1f

    iget v0, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mRenderMode:I

    if-ne v0, v1, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :cond_1f
    :goto_1f
    return v1
.end method

.method private stopEglContextLocked()V
    .registers 2

    .line 1300
    iget-boolean v0, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_13

    .line 1301
    iget-object v0, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mEglHelper:Lcom/unity3d/services/ar/view/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Lcom/unity3d/services/ar/view/GLSurfaceView$EglHelper;->finish()V

    const/4 v0, 0x0

    .line 1302
    iput-boolean v0, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1303
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->sGLThreadManager:Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;->releaseEglContextLocked(Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;)V

    :cond_13
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .registers 2

    .line 1289
    iget-boolean v0, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    .line 1290
    iput-boolean v0, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1291
    iget-object v0, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mEglHelper:Lcom/unity3d/services/ar/view/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Lcom/unity3d/services/ar/view/GLSurfaceView$EglHelper;->destroySurface()V

    :cond_c
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .registers 2

    .line 1655
    iget-boolean v0, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public getRenderMode()I
    .registers 3

    .line 1675
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->sGLThreadManager:Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1676
    :try_start_5
    iget v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mRenderMode:I

    monitor-exit v0

    return v1

    :catchall_9
    move-exception v1

    .line 1677
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public onPause()V
    .registers 3

    .line 1751
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->sGLThreadManager:Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 1755
    :try_start_6
    iput-boolean v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mRequestPaused:Z

    .line 1756
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->sGLThreadManager:Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1757
    :goto_f
    iget-boolean v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_27

    iget-boolean v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mPaused:Z
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_29

    if-nez v1, :cond_27

    .line 1762
    :try_start_17
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->sGLThreadManager:Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1e} :catch_1f
    .catchall {:try_start_17 .. :try_end_1e} :catchall_29

    goto :goto_f

    .line 1764
    :catch_1f
    :try_start_1f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_f

    .line 1767
    :cond_27
    monitor-exit v0

    return-void

    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_1f .. :try_end_2b} :catchall_29

    throw v1

    return-void
.end method

.method public onResume()V
    .registers 4

    .line 1771
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->sGLThreadManager:Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 1775
    :try_start_6
    iput-boolean v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mRequestPaused:Z

    const/4 v2, 0x1

    .line 1776
    iput-boolean v2, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1777
    iput-boolean v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1778
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->sGLThreadManager:Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1779
    :goto_14
    iget-boolean v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_30

    iget-boolean v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mPaused:Z

    if-eqz v1, :cond_30

    iget-boolean v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mRenderComplete:Z
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_32

    if-nez v1, :cond_30

    .line 1784
    :try_start_20
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->sGLThreadManager:Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_27} :catch_28
    .catchall {:try_start_20 .. :try_end_27} :catchall_32

    goto :goto_14

    .line 1786
    :catch_28
    :try_start_28
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_14

    .line 1789
    :cond_30
    monitor-exit v0

    return-void

    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_28 .. :try_end_34} :catchall_32

    throw v1

    return-void
.end method

.method public onWindowResize(II)V
    .registers 4

    .line 1793
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->sGLThreadManager:Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1794
    :try_start_5
    iput p1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mWidth:I

    .line 1795
    iput p2, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mHeight:I

    const/4 p1, 0x1

    .line 1796
    iput-boolean p1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mSizeChanged:Z

    .line 1797
    iput-boolean p1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mRequestRender:Z

    const/4 p1, 0x0

    .line 1798
    iput-boolean p1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1805
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    if-ne p1, p0, :cond_19

    .line 1806
    monitor-exit v0

    return-void

    .line 1809
    :cond_19
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->sGLThreadManager:Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1812
    :goto_20
    iget-boolean p1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mExited:Z

    if-nez p1, :cond_42

    iget-boolean p1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mPaused:Z

    if-nez p1, :cond_42

    iget-boolean p1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mRenderComplete:Z

    if-nez p1, :cond_42

    .line 1813
    invoke-virtual {p0}, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->ableToDraw()Z

    move-result p1
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_44

    if-eqz p1, :cond_42

    .line 1818
    :try_start_32
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->sGLThreadManager:Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_39
    .catch Ljava/lang/InterruptedException; {:try_start_32 .. :try_end_39} :catch_3a
    .catchall {:try_start_32 .. :try_end_39} :catchall_44

    goto :goto_20

    .line 1820
    :catch_3a
    :try_start_3a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_20

    .line 1823
    :cond_42
    monitor-exit v0

    return-void

    :catchall_44
    move-exception p1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3a .. :try_end_46} :catchall_44

    throw p1

    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .registers 4

    if-eqz p1, :cond_18

    .line 1855
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->sGLThreadManager:Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1856
    :try_start_7
    iget-object v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1857
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->sGLThreadManager:Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1858
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw p1

    .line 1853
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "r must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public requestExitAndWait()V
    .registers 3

    .line 1829
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->sGLThreadManager:Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 1830
    :try_start_6
    iput-boolean v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mShouldExit:Z

    .line 1831
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->sGLThreadManager:Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1832
    :goto_f
    iget-boolean v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mExited:Z
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_25

    if-nez v1, :cond_23

    .line 1834
    :try_start_13
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->sGLThreadManager:Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_1a} :catch_1b
    .catchall {:try_start_13 .. :try_end_1a} :catchall_25

    goto :goto_f

    .line 1836
    :catch_1b
    :try_start_1b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_f

    .line 1839
    :cond_23
    monitor-exit v0

    return-void

    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_1b .. :try_end_27} :catchall_25

    throw v1

    return-void
.end method

.method public requestReleaseEglContextLocked()V
    .registers 2

    const/4 v0, 0x1

    .line 1843
    iput-boolean v0, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    .line 1844
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->sGLThreadManager:Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method public requestRender()V
    .registers 3

    .line 1681
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->sGLThreadManager:Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 1682
    :try_start_6
    iput-boolean v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1683
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->sGLThreadManager:Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1684
    monitor-exit v0

    return-void

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public requestRenderAndNotify(Ljava/lang/Runnable;)V
    .registers 4

    .line 1695
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->sGLThreadManager:Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1700
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v1, p0, :cond_d

    .line 1701
    monitor-exit v0

    return-void

    :cond_d
    const/4 v1, 0x1

    .line 1704
    iput-boolean v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    .line 1705
    iput-boolean v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mRequestRender:Z

    const/4 v1, 0x0

    .line 1706
    iput-boolean v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1707
    iput-object p1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    .line 1709
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->sGLThreadManager:Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1710
    monitor-exit v0

    return-void

    :catchall_20
    move-exception p1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_20

    throw p1
.end method

.method public run()V
    .registers 4

    .line 1270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->setName(Ljava/lang/String;)V

    .line 1276
    :try_start_18
    invoke-direct {p0}, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->guardedRun()V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1b} :catch_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_23

    .line 1280
    :catch_1b
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->sGLThreadManager:Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;->threadExiting(Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;)V

    goto :goto_2c

    :catchall_23
    move-exception v0

    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->sGLThreadManager:Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;->threadExiting(Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;)V

    throw v0

    :goto_2c
    return-void
.end method

.method public setRenderMode(I)V
    .registers 3

    if-ltz p1, :cond_18

    const/4 v0, 0x1

    if-gt p1, v0, :cond_18

    .line 1668
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->sGLThreadManager:Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1669
    :try_start_a
    iput p1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mRenderMode:I

    .line 1670
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->sGLThreadManager:Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1671
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_15

    throw p1

    .line 1666
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "renderMode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public surfaceCreated()V
    .registers 3

    .line 1714
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->sGLThreadManager:Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 1718
    :try_start_6
    iput-boolean v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mHasSurface:Z

    const/4 v1, 0x0

    .line 1719
    iput-boolean v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1720
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->sGLThreadManager:Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1721
    :goto_12
    iget-boolean v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v1, :cond_2e

    iget-boolean v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    if-nez v1, :cond_2e

    iget-boolean v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mExited:Z
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_30

    if-nez v1, :cond_2e

    .line 1725
    :try_start_1e
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->sGLThreadManager:Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_25} :catch_26
    .catchall {:try_start_1e .. :try_end_25} :catchall_30

    goto :goto_12

    .line 1727
    :catch_26
    :try_start_26
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_12

    .line 1730
    :cond_2e
    monitor-exit v0

    return-void

    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_26 .. :try_end_32} :catchall_30

    throw v1

    return-void
.end method

.method public surfaceDestroyed()V
    .registers 3

    .line 1734
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->sGLThreadManager:Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 1738
    :try_start_6
    iput-boolean v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 1739
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->sGLThreadManager:Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1740
    :goto_f
    iget-boolean v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v1, :cond_27

    iget-boolean v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mExited:Z
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_29

    if-nez v1, :cond_27

    .line 1742
    :try_start_17
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->sGLThreadManager:Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1e} :catch_1f
    .catchall {:try_start_17 .. :try_end_1e} :catchall_29

    goto :goto_f

    .line 1744
    :catch_1f
    :try_start_1f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_f

    .line 1747
    :cond_27
    monitor-exit v0

    return-void

    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_1f .. :try_end_2b} :catchall_29

    throw v1

    return-void
.end method

.method public swapBuffers()V
    .registers 3

    .line 1688
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->sGLThreadManager:Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 1689
    :try_start_6
    iput-boolean v1, p0, Lcom/unity3d/services/ar/view/GLSurfaceView$GLThread;->mRequestSwap:Z

    .line 1690
    # getter for: Lcom/unity3d/services/ar/view/GLSurfaceView;->sGLThreadManager:Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/unity3d/services/ar/view/GLSurfaceView;->access$800()Lcom/unity3d/services/ar/view/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1691
    monitor-exit v0

    return-void

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_11

    throw v1
.end method
