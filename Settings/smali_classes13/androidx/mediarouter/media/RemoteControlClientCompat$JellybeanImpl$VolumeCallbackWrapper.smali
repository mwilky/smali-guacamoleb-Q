.class final Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl$VolumeCallbackWrapper;
.super Ljava/lang/Object;
.source "RemoteControlClientCompat.java"

# interfaces
.implements Landroidx/mediarouter/media/MediaRouterJellybean$VolumeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VolumeCallbackWrapper"
.end annotation


# instance fields
.field private final mImplWeak:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl$VolumeCallbackWrapper;->mImplWeak:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onVolumeSetRequest(Ljava/lang/Object;I)V
    .locals 2

    iget-object v0, p0, Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl$VolumeCallbackWrapper;->mImplWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl;->mVolumeCallback:Landroidx/mediarouter/media/RemoteControlClientCompat$VolumeCallback;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl;->mVolumeCallback:Landroidx/mediarouter/media/RemoteControlClientCompat$VolumeCallback;

    invoke-interface {v1, p2}, Landroidx/mediarouter/media/RemoteControlClientCompat$VolumeCallback;->onVolumeSetRequest(I)V

    :cond_0
    return-void
.end method

.method public onVolumeUpdateRequest(Ljava/lang/Object;I)V
    .locals 2

    iget-object v0, p0, Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl$VolumeCallbackWrapper;->mImplWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl;->mVolumeCallback:Landroidx/mediarouter/media/RemoteControlClientCompat$VolumeCallback;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl;->mVolumeCallback:Landroidx/mediarouter/media/RemoteControlClientCompat$VolumeCallback;

    invoke-interface {v1, p2}, Landroidx/mediarouter/media/RemoteControlClientCompat$VolumeCallback;->onVolumeUpdateRequest(I)V

    :cond_0
    return-void
.end method
