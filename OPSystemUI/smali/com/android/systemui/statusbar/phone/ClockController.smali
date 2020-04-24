.class public Lcom/android/systemui/statusbar/phone/ClockController;
.super Ljava/lang/Object;
.source "ClockController.java"


# instance fields
.field private mActiveClock:Lcom/android/systemui/statusbar/policy/Clock;

.field private mCenterClock:Lcom/android/systemui/statusbar/policy/Clock;

.field private mLeftClock:Lcom/android/systemui/statusbar/policy/Clock;

.field private mRightClock:Lcom/android/systemui/statusbar/policy/Clock;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "id"

    const-string v1, "clock_center"

    invoke-static {v1, v0}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/Clock;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mCenterClock:Lcom/android/systemui/statusbar/policy/Clock;

    .line 17
    const-string v1, "clock"

    invoke-static {v1, v0}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/Clock;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mLeftClock:Lcom/android/systemui/statusbar/policy/Clock;

    .line 18
    const-string v1, "clock_right"

    invoke-static {v1, v0}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/Clock;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mRightClock:Lcom/android/systemui/statusbar/policy/Clock;

    .line 19
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mLeftClock:Lcom/android/systemui/statusbar/policy/Clock;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mActiveClock:Lcom/android/systemui/statusbar/policy/Clock;
    
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ClockController;->updateActiveClock()V

    .line 20
    return-void
.end method

.method public updateActiveClock()V
    .registers 5

    .line 23
    sget v0, Lcom/android/mwilky/Renovate;->mClockPosition:I

    .line 24
    .local v0, "i":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_18

    .line 25
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mLeftClock:Lcom/android/systemui/statusbar/policy/Clock;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mActiveClock:Lcom/android/systemui/statusbar/policy/Clock;

    .line 26
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    .line 27
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mCenterClock:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    .line 28
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mRightClock:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    goto :goto_58

    .line 29
    :cond_18
    if-ne v0, v1, :cond_2e

    .line 30
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mRightClock:Lcom/android/systemui/statusbar/policy/Clock;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mActiveClock:Lcom/android/systemui/statusbar/policy/Clock;

    .line 31
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mLeftClock:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    .line 32
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mRightClock:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    .line 33
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mCenterClock:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    goto :goto_58

    .line 34
    :cond_2e
    const/4 v3, 0x2

    if-ne v0, v3, :cond_44

    .line 35
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mActiveClock:Lcom/android/systemui/statusbar/policy/Clock;

    .line 36
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mLeftClock:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    .line 37
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mCenterClock:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    .line 38
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mRightClock:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    goto :goto_58

    .line 39
    :cond_44
    const/4 v3, 0x3

    if-ne v0, v3, :cond_58

    .line 40
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mCenterClock:Lcom/android/systemui/statusbar/policy/Clock;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mActiveClock:Lcom/android/systemui/statusbar/policy/Clock;

    .line 41
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    .line 42
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mRightClock:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    .line 43
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mLeftClock:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    .line 45
    :cond_58
    :goto_58
    return-void
.end method


# virtual methods
.method public getClock()Lcom/android/systemui/statusbar/policy/Clock;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mActiveClock:Lcom/android/systemui/statusbar/policy/Clock;

    return-object v0
.end method
