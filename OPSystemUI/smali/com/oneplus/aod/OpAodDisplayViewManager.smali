.class public Lcom/oneplus/aod/OpAodDisplayViewManager;
.super Ljava/lang/Object;
.source "OpAodDisplayViewManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/AmbientPulseManager$OnAmbientChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;
    }
.end annotation


# static fields
.field public static mAlwaysOnPulse:Z

.field public static mPulseStatus:I


# instance fields
.field final autoHide:Landroid/os/Handler;

.field private final mAmbientPulseManager:Lcom/android/systemui/statusbar/AmbientPulseManager;

.field private mAodMainView:Lcom/oneplus/aod/OpAodMain;

.field private mClockViewCtrl:Lcom/oneplus/aod/OpClockViewCtrl;

.field private mContainer:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mDozeHost:Lcom/android/systemui/doze/DozeHost;

.field private mHandler:Landroid/os/Handler;

.field private mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

.field private mIndication:Lcom/oneplus/aod/OpFpAodIndicationText;

.field public mIsPlayFingerprintUnlockAnimation:Z

.field private mIsPress:Z

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLayoutDir:I

.field private mLightEffectContainer:Lcom/oneplus/aod/OpAodLightEffectContainer;

.field private mNotificationIconCtrl:Lcom/oneplus/aod/OpAodNotificationIconAreaController;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mScrimView:Landroid/view/View;

.field private final mSettingObserver:Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;

.field public mSingleNotificationView:Lcom/oneplus/aod/OpSingleNotificationView;

.field private mSliceManager:Lcom/oneplus/aod/slice/OpSliceManager;

.field private mStatus:I

.field private mStatusbar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mThreeKeyView:Lcom/oneplus/aod/OpAodThreeKeyStatusView;

.field private final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/doze/DozeHost;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mStatus:I
    
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->autoHide:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;-><init>(Lcom/oneplus/aod/OpAodDisplayViewManager;)V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSettingObserver:Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;

    const-class v0, Lcom/android/systemui/statusbar/AmbientPulseManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/AmbientPulseManager;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAmbientPulseManager:Lcom/android/systemui/statusbar/AmbientPulseManager;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/aod/OpAodDisplayViewManager$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/OpAodDisplayViewManager$1;-><init>(Lcom/oneplus/aod/OpAodDisplayViewManager;)V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mIsPress:Z

    new-instance v1, Lcom/oneplus/aod/OpAodDisplayViewManager$2;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/OpAodDisplayViewManager$2;-><init>(Lcom/oneplus/aod/OpAodDisplayViewManager;)V

    iput-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iput-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    iget-object p3, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    iget-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

    invoke-interface {p3, v1}, Lcom/android/systemui/doze/DozeHost;->addCallback(Lcom/android/systemui/doze/DozeHost$Callback;)V

    iput-object p4, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mStatusbar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const-string p3, "power"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/PowerManager;

    iput-object p3, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mPowerManager:Landroid/os/PowerManager;

    new-instance p3, Lcom/oneplus/aod/OpClockViewCtrl;

    invoke-direct {p3, p1, p2}, Lcom/oneplus/aod/OpClockViewCtrl;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object p3, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mClockViewCtrl:Lcom/oneplus/aod/OpClockViewCtrl;

    invoke-direct {p0, p2}, Lcom/oneplus/aod/OpAodDisplayViewManager;->initViews(Landroid/view/ViewGroup;)V

    new-instance p3, Lcom/oneplus/aod/slice/OpSliceManager;

    iget-object p4, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$id;->slice_info_container:I

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-direct {p3, p4, p2}, Lcom/oneplus/aod/slice/OpSliceManager;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object p3, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSliceManager:Lcom/oneplus/aod/slice/OpSliceManager;

    iget-object p2, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p2, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p3, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    new-instance p2, Lcom/oneplus/aod/OpAodNotificationIconAreaController;

    iget-object p3, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/OpAodMain;

    invoke-direct {p2, p1, p3}, Lcom/oneplus/aod/OpAodNotificationIconAreaController;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object p2, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mNotificationIconCtrl:Lcom/oneplus/aod/OpAodNotificationIconAreaController;

    iget-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "aod_clock_style"

    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object p3, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSettingObserver:Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;

    const/4 p4, -0x1

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "aod_display_text"

    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object p3, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSettingObserver:Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "op_custom_horizon_light_animation_style"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object p3, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSettingObserver:Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    
    iget-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "tweaks_thin_aod_clock"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object p3, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSettingObserver:Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAmbientPulseManager:Lcom/android/systemui/statusbar/AmbientPulseManager;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/AmbientPulseManager;->addListener(Lcom/android/systemui/statusbar/AmbientPulseManager$OnAmbientChangedListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpAodThreeKeyStatusView;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mThreeKeyView:Lcom/oneplus/aod/OpAodThreeKeyStatusView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpClockViewCtrl;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mClockViewCtrl:Lcom/oneplus/aod/OpClockViewCtrl;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/slice/OpSliceManager;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSliceManager:Lcom/oneplus/aod/slice/OpSliceManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpAodMain;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/OpAodMain;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpAodNotificationIconAreaController;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mNotificationIconCtrl:Lcom/oneplus/aod/OpAodNotificationIconAreaController;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpFpAodIndicationText;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mIndication:Lcom/oneplus/aod/OpFpAodIndicationText;

    return-object p0
.end method

.method static synthetic access$600(Lcom/oneplus/aod/OpAodDisplayViewManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->isAodMode()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/oneplus/aod/OpAodDisplayViewManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpAodLightEffectContainer;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mLightEffectContainer:Lcom/oneplus/aod/OpAodLightEffectContainer;

    return-object p0
.end method

.method private getStateString(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const-string/jumbo p0, "unknown"

    return-object p0

    :cond_0
    const-string/jumbo p0, "threekey"

    return-object p0

    :cond_1
    const-string p0, "notification"

    return-object p0

    :cond_2
    const-string p0, "main"

    return-object p0

    :cond_3
    const-string p0, "none"

    return-object p0
.end method

.method private initViews(Landroid/view/ViewGroup;)V
    .locals 5

    sget v0, Lcom/android/systemui/R$id;->op_aod_container:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContainer:Landroid/view/ViewGroup;

    sget v0, Lcom/android/systemui/R$id;->op_aod_view:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/OpAodMain;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/OpAodMain;

    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/OpAodMain;

    iget-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mClockViewCtrl:Lcom/oneplus/aod/OpClockViewCtrl;

    invoke-virtual {v1}, Lcom/oneplus/aod/OpClockViewCtrl;->getClockStyle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/OpAodMain;->setClockStyle(I)V

    sget v0, Lcom/android/systemui/R$id;->single_notification_view:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/OpSingleNotificationView;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSingleNotificationView:Lcom/oneplus/aod/OpSingleNotificationView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mLayoutDir:I

    sget v0, Lcom/android/systemui/R$id;->three_key_view:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/OpAodThreeKeyStatusView;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mThreeKeyView:Lcom/oneplus/aod/OpAodThreeKeyStatusView;

    sget v0, Lcom/android/systemui/R$id;->aod_scrim:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mScrimView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->notification_animation_view:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/OpAodLightEffectContainer;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mLightEffectContainer:Lcom/oneplus/aod/OpAodLightEffectContainer;

    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mLightEffectContainer:Lcom/oneplus/aod/OpAodLightEffectContainer;

    iget-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "op_custom_horizon_light_animation_style"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/OpAodLightEffectContainer;->setLightIndex(I)V

    sget v0, Lcom/android/systemui/R$id;->op_aod_fp_indication_text:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oneplus/aod/OpFpAodIndicationText;

    iput-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mIndication:Lcom/oneplus/aod/OpFpAodIndicationText;

    iget-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mIndication:Lcom/oneplus/aod/OpFpAodIndicationText;

    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0, v0}, Lcom/oneplus/aod/OpFpAodIndicationText;->init(Lcom/oneplus/aod/OpAodDisplayViewManager;Landroid/os/Handler;)V

    invoke-direct {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->updateAodMainParam()V

    return-void
.end method

.method private isAodMode()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateAodMainParam()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->isSupportResolutionSwitch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/OpAodMain;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/oneplus/util/OpUtils;->is2KResolution()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/android/systemui/R$dimen;->op_biometric_icon_normal_location_y_2k:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/android/systemui/R$dimen;->op_biometric_icon_normal_location_y_1080p:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->isCutoutHide(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oneplus/util/OpUtils;->getCutoutPathdataHeight(Landroid/content/Context;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :cond_1
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/OpAodMain;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private updateView()V
    .registers 9

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "updateView: state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mStatus:I

    invoke-direct {p0, v1}, Lcom/oneplus/aod/OpAodDisplayViewManager;->getStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v1, " mIsPlayFingerprintUnlockAnimation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget-boolean v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mIsPlayFingerprintUnlockAnimation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 110
    const-string v1, " mIsPress:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-boolean v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mIsPress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AodDisplayViewManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mStatus:I

    sput v1, Lcom/oneplus/aod/OpAodDisplayViewManager;->mPulseStatus:I

    .line 114
    iget-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mLightEffectContainer:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-virtual {v1}, Lcom/oneplus/aod/OpAodLightEffectContainer;->resetNotificationAnimView()V

    .line 115
    iget-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mLightEffectContainer:Lcom/oneplus/aod/OpAodLightEffectContainer;

    iget v2, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mStatus:I

    invoke-virtual {v1, v2}, Lcom/oneplus/aod/OpAodLightEffectContainer;->setCustomEdgeColors(I)V

    .line 116
    iget-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mLightEffectContainer:Lcom/oneplus/aod/OpAodLightEffectContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/oneplus/aod/OpAodLightEffectContainer;->showLight(ZZ)V

    .line 117
    iget v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mStatus:I

    const/4 v3, 0x4

    if-nez v1, :cond_66

    .line 118
    iget-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mScrimView:Landroid/view/View;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 119
    iget-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/OpAodMain;

    invoke-virtual {v1, v2}, Lcom/oneplus/aod/OpAodMain;->setVisibility(I)V

    .line 120
    iget-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSingleNotificationView:Lcom/oneplus/aod/OpSingleNotificationView;

    invoke-virtual {v1, v3}, Lcom/oneplus/aod/OpSingleNotificationView;->setVisibility(I)V

    .line 121
    iget-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mThreeKeyView:Lcom/oneplus/aod/OpAodThreeKeyStatusView;

    invoke-virtual {v1, v3}, Lcom/oneplus/aod/OpAodThreeKeyStatusView;->setVisibility(I)V

    .line 122
    invoke-virtual {p0, v2}, Lcom/oneplus/aod/OpAodDisplayViewManager;->hideViewsForAlwaysOnHorizon(Z)V

    goto/16 :goto_129

    .line 123
    :cond_66
    iget-boolean v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mIsPlayFingerprintUnlockAnimation:Z

    if-nez v1, :cond_10f

    iget-boolean v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mIsPress:Z

    if-eqz v1, :cond_70

    goto/16 :goto_10f

    .line 130
    :cond_70
    iget-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 131
    iget-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mScrimView:Landroid/view/View;

    const v4, 0x3e99999a    # 0.3f

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 132
    iget v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mStatus:I

    .line 133
    .local v1, "i":I
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v1, v5, :cond_93

    .line 134
    iget-object v6, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/OpAodMain;

    invoke-virtual {v6, v2}, Lcom/oneplus/aod/OpAodMain;->setVisibility(I)V

    .line 135
    iget-object v6, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSingleNotificationView:Lcom/oneplus/aod/OpSingleNotificationView;

    invoke-virtual {v6, v3}, Lcom/oneplus/aod/OpSingleNotificationView;->setVisibility(I)V

    .line 136
    iget-object v6, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mThreeKeyView:Lcom/oneplus/aod/OpAodThreeKeyStatusView;

    invoke-virtual {v6, v3}, Lcom/oneplus/aod/OpAodThreeKeyStatusView;->setVisibility(I)V

    goto :goto_b7

    .line 137
    :cond_93
    if-ne v1, v4, :cond_a5

    .line 138
    iget-object v6, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/OpAodMain;

    invoke-virtual {v6, v3}, Lcom/oneplus/aod/OpAodMain;->setVisibility(I)V

    .line 139
    iget-object v6, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSingleNotificationView:Lcom/oneplus/aod/OpSingleNotificationView;

    invoke-virtual {v6, v2}, Lcom/oneplus/aod/OpSingleNotificationView;->setVisibility(I)V

    .line 140
    iget-object v6, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mThreeKeyView:Lcom/oneplus/aod/OpAodThreeKeyStatusView;

    invoke-virtual {v6, v3}, Lcom/oneplus/aod/OpAodThreeKeyStatusView;->setVisibility(I)V

    goto :goto_b7

    .line 141
    :cond_a5
    const/4 v6, 0x3

    if-ne v1, v6, :cond_b7

    .line 142
    iget-object v6, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/OpAodMain;

    invoke-virtual {v6, v3}, Lcom/oneplus/aod/OpAodMain;->setVisibility(I)V

    .line 143
    iget-object v6, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSingleNotificationView:Lcom/oneplus/aod/OpSingleNotificationView;

    invoke-virtual {v6, v3}, Lcom/oneplus/aod/OpSingleNotificationView;->setVisibility(I)V

    .line 144
    iget-object v3, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mThreeKeyView:Lcom/oneplus/aod/OpAodThreeKeyStatusView;

    invoke-virtual {v3, v2}, Lcom/oneplus/aod/OpAodThreeKeyStatusView;->setVisibility(I)V

    .line 146
    :cond_b7
    :goto_b7
    invoke-static {}, Lcom/oneplus/aod/OpAodUtils;->isNotificationLightEnabled()Z

    move-result v3

    if-eqz v3, :cond_129

    .line 147
    iget v3, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mStatus:I

    if-ne v3, v4, :cond_fb

    .line 148
    sget-boolean v3, Lcom/android/mwilky/Renovate;->mAlwaysOnNewNotifications:Z

    if-eqz v3, :cond_f5

    iget-object v3, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mwilky/Renovate;->isZenActive(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_f5

    .line 149
    iget-object v3, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->autoHide:Landroid/os/Handler;

    new-instance v4, Lcom/oneplus/aod/OpAodDisplayViewManager$AutoHide;

    invoke-direct {v4, p0}, Lcom/oneplus/aod/OpAodDisplayViewManager$AutoHide;-><init>(Lcom/oneplus/aod/OpAodDisplayViewManager;)V

    sget-wide v6, Lcom/android/mwilky/Renovate;->mAlwaysOnNewNotificationsTimeOut:J

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 155
    sget-boolean v3, Lcom/android/mwilky/Renovate;->mAlwaysOnNewNotificationsInfo:Z

    if-eqz v3, :cond_e5

    .line 156
    iget-object v3, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/OpAodMain;

    invoke-virtual {v3, v2}, Lcom/oneplus/aod/OpAodMain;->setVisibility(I)V

    .line 157
    invoke-virtual {p0, v5}, Lcom/oneplus/aod/OpAodDisplayViewManager;->hideViewsForAlwaysOnHorizon(Z)V

    .line 159
    :cond_e5
    sget-boolean v3, Lcom/oneplus/aod/OpSingleNotificationView;->mIsMediaNotification:Z

    if-nez v3, :cond_ef

    .line 160
    iget-object v2, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mLightEffectContainer:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-virtual {v2, v5, v5}, Lcom/oneplus/aod/OpAodLightEffectContainer;->showLight(ZZ)V

    goto :goto_129

    .line 162
    :cond_ef
    iget-object v3, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mLightEffectContainer:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-virtual {v3, v2, v5}, Lcom/oneplus/aod/OpAodLightEffectContainer;->showLight(ZZ)V

    goto :goto_129

    .line 165
    :cond_f5
    iget-object v3, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mLightEffectContainer:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-virtual {v3, v2, v5}, Lcom/oneplus/aod/OpAodLightEffectContainer;->showLight(ZZ)V

    goto :goto_129

    .line 167
    :cond_fb
    sget-boolean v3, Lcom/android/mwilky/Renovate;->mEdgeAnimOnUnreadNotifs:Z

    if-eqz v3, :cond_109

    sget-boolean v3, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mActiveNotifications:Z

    if-eqz v3, :cond_109

    .line 168
    iget-object v3, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mLightEffectContainer:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-virtual {v3, v2, v5}, Lcom/oneplus/aod/OpAodLightEffectContainer;->showLight(ZZ)V

    goto :goto_129

    .line 170
    :cond_109
    iget-object v2, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mLightEffectContainer:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-virtual {v2}, Lcom/oneplus/aod/OpAodLightEffectContainer;->resetNotificationAnimView()V

    goto :goto_129

    .line 124
    .end local v1    # "i":I
    :cond_10f
    :goto_10f
    iget-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 125
    iget-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mScrimView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 126
    iget-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/OpAodMain;

    invoke-virtual {v1, v3}, Lcom/oneplus/aod/OpAodMain;->setVisibility(I)V

    .line 127
    iget-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSingleNotificationView:Lcom/oneplus/aod/OpSingleNotificationView;

    invoke-virtual {v1, v3}, Lcom/oneplus/aod/OpSingleNotificationView;->setVisibility(I)V

    .line 128
    iget-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mThreeKeyView:Lcom/oneplus/aod/OpAodThreeKeyStatusView;

    invoke-virtual {v1, v3}, Lcom/oneplus/aod/OpAodThreeKeyStatusView;->setVisibility(I)V

    .line 174
    :cond_129
    :goto_129
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSliceManager:Lcom/oneplus/aod/slice/OpSliceManager;

    invoke-virtual {p0, p1}, Lcom/oneplus/aod/slice/OpSliceManager;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getAodNotificationIconCtrl()Lcom/oneplus/aod/OpAodNotificationIconAreaController;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mNotificationIconCtrl:Lcom/oneplus/aod/OpAodNotificationIconAreaController;

    return-object p0
.end method

.method public handleUserUnlocked()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSliceManager:Lcom/oneplus/aod/slice/OpSliceManager;

    invoke-virtual {p0}, Lcom/oneplus/aod/slice/OpSliceManager;->onTimeChanged()V

    return-void
.end method

.method public onAmbientStateChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSingleNotificationView:Lcom/oneplus/aod/OpSingleNotificationView;

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/OpSingleNotificationView;->onNotificationHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    iget v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mLayoutDir:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/OpAodMain;

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/OpAodMain;->updateRTL(I)V

    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSingleNotificationView:Lcom/oneplus/aod/OpSingleNotificationView;

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/OpSingleNotificationView;->updateRTL(I)V

    iput p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mLayoutDir:I

    :cond_0
    return-void
.end method

.method public onDensityOrFontScaleChanged(Landroid/view/ViewGroup;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/oneplus/aod/OpAodDisplayViewManager;->initViews(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mClockViewCtrl:Lcom/oneplus/aod/OpClockViewCtrl;

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/OpClockViewCtrl;->initViews(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSliceManager:Lcom/oneplus/aod/slice/OpSliceManager;

    sget v1, Lcom/android/systemui/R$id;->slice_info_container:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/slice/OpSliceManager;->initViews(Landroid/view/View;)V

    iget-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mNotificationIconCtrl:Lcom/oneplus/aod/OpAodNotificationIconAreaController;

    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/OpAodMain;

    invoke-virtual {p1, v0}, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->initViews(Landroid/view/ViewGroup;)V

    iget-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/OpAodMain;

    invoke-virtual {p1}, Lcom/oneplus/aod/OpAodMain;->onDensityOrFontScaleChanged()V

    iget-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->oneplus_contorl_text_size_body1:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/aod/OpAodDisplayViewManager;->updateIndicationTextSize(II)V

    return-void
.end method

.method public onFingerPressed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mIsPress:Z

    invoke-direct {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->updateView()V

    return-void
.end method

.method public onPlayFingerprintUnlockAnimation(Z)V
    .locals 2

    const-string v0, "AodDisplayViewManager"

    const-string v1, "onPlayFingerprintUnlockAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mIsPlayFingerprintUnlockAnimation:Z

    invoke-direct {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->updateView()V

    return-void
.end method

.method public playAodWakingUpAnimation()Z
    .locals 0

    iget p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mStatus:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public resetStatus()V
    .locals 2

    const-string v0, "AodDisplayViewManager"

    const-string v1, "resetStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mStatus:I
    
    sput v0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mPulseStatus:I

    iput-boolean v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mIsPress:Z

    invoke-direct {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->updateView()V

    return-void
.end method

.method public startDozing()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mClockViewCtrl:Lcom/oneplus/aod/OpClockViewCtrl;

    invoke-virtual {v0}, Lcom/oneplus/aod/OpClockViewCtrl;->startDozing()V

    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSliceManager:Lcom/oneplus/aod/slice/OpSliceManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/slice/OpSliceManager;->setListening(Z)V

    return-void
.end method

.method public stopDozing()V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSliceManager:Lcom/oneplus/aod/slice/OpSliceManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/slice/OpSliceManager;->setListening(Z)V

    return-void
.end method

.method public updateForPulseReason(I)V
    .registers 8
    .param p1, "i"    # I

    .line 250
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "pulse_reason":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mStatusbar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozingCustom()Z

    move-result v1

    const-string v2, "AodDisplayViewManager"

    if-nez v1, :cond_14

    .line 253
    const-string v1, "setState: don\'t set view if not dozing"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7d

    .line 254
    :cond_14
    iget-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 255
    const-string v1, "setState: don\'t set view if waking up"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7d

    .line 257
    :cond_22
    const/4 v1, 0x0

    .line 258
    .local v1, "i2":I
    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq p1, v3, :cond_3b

    const/16 v3, 0xc

    if-ne p1, v3, :cond_2c

    goto :goto_3b

    .line 260
    :cond_2c
    if-ne p1, v4, :cond_30

    .line 261
    const/4 v1, 0x2

    goto :goto_3c

    .line 262
    :cond_30
    const/16 v3, 0xa

    if-ne p1, v3, :cond_36

    .line 263
    const/4 v1, 0x3

    goto :goto_3c

    .line 264
    :cond_36
    const/16 v3, 0xd

    if-ne p1, v3, :cond_3c

    .line 265
    return-void

    .line 259
    :cond_3b
    :goto_3b
    const/4 v1, 0x1

    .line 267
    :cond_3c
    :goto_3c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setState="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lcom/oneplus/aod/OpAodDisplayViewManager;->getStateString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", from="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mStatus:I

    invoke-direct {p0, v5}, Lcom/oneplus/aod/OpAodDisplayViewManager;->getStateString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget v2, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mStatus:I

    if-eq v2, v1, :cond_7d

    .line 269
    iput v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mStatus:I

    .line 270
    iget v2, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mStatus:I

    if-eq v2, v4, :cond_6f

    const/4 v3, 0x2

    if-ne v2, v3, :cond_74

    .line 271
    :cond_6f
    iget-object v2, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mSliceManager:Lcom/oneplus/aod/slice/OpSliceManager;

    invoke-virtual {v2}, Lcom/oneplus/aod/slice/OpSliceManager;->onInitiativePulse()V

    .line 273
    :cond_74
    iget v2, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mStatus:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, "mstatus":Ljava/lang/String;
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->updateView()V

    .line 278
    .end local v1    # "i2":I
    .end local v2    # "mstatus":Ljava/lang/String;
    :cond_7d
    :goto_7d
    return-void
.end method

.method public updateThinText()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mClockViewCtrl:Lcom/oneplus/aod/OpClockViewCtrl;

    invoke-virtual {v0}, Lcom/oneplus/aod/OpClockViewCtrl;->updateThinText()V

    return-void
.end method

.method public hideViewsForAlwaysOnHorizon(Z)V
    .registers 4
    .param p1, "Hide"    # Z

    .line 276
    if-eqz p1, :cond_11

    .line 277
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/OpAodMain;

    iget-object v0, v0, Lcom/oneplus/aod/OpAodMain;->mDateTimeView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/OpAodMain;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/OpAodMain;->setClockStyle(I)V

    goto :goto_24

    .line 280
    :cond_11
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/OpAodMain;

    iget-object v0, v0, Lcom/oneplus/aod/OpAodMain;->mDateTimeView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/OpAodMain;

    iget-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mClockViewCtrl:Lcom/oneplus/aod/OpClockViewCtrl;

    invoke-virtual {v1}, Lcom/oneplus/aod/OpClockViewCtrl;->getClockStyle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/OpAodMain;->setClockStyle(I)V

    .line 283
    :goto_24
    return-void
.end method

.method public updateIndicationTextSize(II)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager;->mIndication:Lcom/oneplus/aod/OpFpAodIndicationText;

    int-to-float p2, p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method
